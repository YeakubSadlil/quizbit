from django.core.cache import cache
from rest_framework import status, permissions
from rest_framework.exceptions import ValidationError
from rest_framework.pagination import PageNumberPagination
from rest_framework.response import Response
from rest_framework.views import APIView
from rest_framework_simplejwt.tokens import RefreshToken

from . import models, serializers
from .emails import *
from .serializers import UserRegistrationSerializer, UserLoginSerializer, QuizSessionSerializer
from .throttles import LoginThrottle, RegisterThrottle


class HomeView(APIView):
    """
    Home view for the root URL
    """

    def get(self, request):
        return Response({
            "msg": "This is QuizBit, a MCQ Simulation API!",
            "endpoints": {
                "register": "/api/register/",
                "verify otp": "/api/verify-otp/",
                "login": "/api/login/",
                "admin data management": "/admin",
                "question lists": "/api/question-list/",
                "question detail": "/api/question-detail/<int:pk>/",
                "submit answer": "/api/submit-answer/",
                "user histories": "/api/user_history/"
            }
        })


def get_tokens(user):
    refresh_token = RefreshToken.for_user(user)
    return {
        'refresh': str(refresh_token),
        'access': str(refresh_token.access_token)
    }


class RegistrationView(APIView):
    throttle_classes = [RegisterThrottle]

    def post(self, request):
        serializer = UserRegistrationSerializer(data=request.data)

        if serializer.is_valid():
            email = serializer.validated_data['email']
            existing_user = models.Users.objects.filter(email=email).first()

            if existing_user and not existing_user.is_active:
                send_otp_via_email(email)

                return Response({
                    'msg': 'The user is already registered but not verified. A new OTP has been sent to your mail'
                }, status=status.HTTP_200_OK)

            serializer.save()
            send_otp_via_email(serializer.data['email'])

            return Response({
                'msg': 'An OTP has been sent to your email. Please check your inbox or spam folder.'
            }, status=status.HTTP_200_OK)

        return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)


class VerifyOTPView(APIView):
    throttle_classes = [RegisterThrottle]

    def post(self, request):
        serializer = serializers.VerifyOTPSerializer(data=request.data)

        if serializer.is_valid():
            email = serializer.validated_data['email']
            received_otp = serializer.validated_data['otp']
            user = models.Users.objects.filter(email=email).first()

            # check whether the user exists already and verified
            if user and user.is_active and user.is_verified:
                return Response({
                    'msg': 'The user is already verified. Please log in'
                }, status=status.HTTP_400_BAD_REQUEST)

            # check whether the user exists but not verified
            elif user and not user.is_active and not user.is_verified:
                if user.otp == received_otp:
                    user.is_active = True  # activate the inactive user
                    user.is_verified = True
                    user.otp = None  # clear the otp
                    user.save()
                    return Response({
                        'msg': 'Successfully verified',
                    }, status=status.HTTP_200_OK)
                else:
                    return Response({
                        'msg': 'Invalid OTP'
                    }, status=status.HTTP_400_BAD_REQUEST)
            else:
                return Response({
                    'msg': 'The user is not registered yet. Please register first to get a OTP'
                }, status=status.HTTP_404_NOT_FOUND)

        return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)


class LoginView(APIView):
    throttle_classes = [LoginThrottle]

    def post(self, request):
        serializer = UserLoginSerializer(data=request.data)
        if serializer.is_valid():
            email = serializer.data.get("email")
            password = serializer.data.get("password")
            # Django default "authenticate" is avoided as it returns only the active user
            # But we need to check OTP unverified and inactive user
            # user = authenticate(email=email,password=password)
            # print(user)
            user = models.Users.objects.filter(email=email).first()

            if user and user.check_password(password):
                if user.is_active and user.is_verified:
                    token = get_tokens(user)
                    return Response({
                        'token': token,
                        'msg': "Login Success",
                        'email': user.email,
                    }, status=status.HTTP_200_OK)

                elif not user.is_active and not user.is_verified:
                    send_otp_via_email(email)
                    return Response({
                        'msg': "The user is already registered but not verified yet. A new OTP has been sent to your mail"
                    }, status=status.HTTP_200_OK)

                elif not user.is_active and user.is_verified:
                    return Response({
                        'msg': "The user is blocked. Please contact the authority"
                    }, status=status.HTTP_403_FORBIDDEN)

            return Response({
                'errors': 'email or password is incorrect'
            }, status=status.HTTP_401_UNAUTHORIZED)

        return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)


class QuestionListView(APIView):
    """
    Returns all the questions list filtered based on difficulty and category (Topic)
    - difficulty: (string) Ex: easy, medium, hard
    - category: (integer) Ex: 1, 5, 3; mapped as Physics, Chemistry ...
    """

    # permission_classes = [permissions.IsAuthenticated]

    def validate_difficulty(self, diff):
        difficulty_list = {'easy', 'medium', 'hard'}
        if not diff: return None

        if diff.lower() in difficulty_list:
            return diff.lower()

        raise ValidationError(
            f"Invalid difficulty. Difficulty must be within : {', '.join(difficulty_list)}"
        )

    def validate_category(self, catg):
        try:
            return int(catg) if catg else None
        except ValueError:
            raise ValidationError("Category_id must be an integer only")

    def get(self, request):
        try:
            difficulty = self.validate_difficulty(request.query_params.get('difficulty'))
            category_id = self.validate_category(request.query_params.get('category_id'))
            cached_data = None

            try:
                cache_key = f"question_list_difficulty={difficulty}+category_id={category_id}"
                cached_data = cache.get(cache_key)
            except Exception as cache_error:
                print(f"[Warning] Redis not available (GET): {cache_error}")

            if cached_data:
                return Response(cached_data)

            if category_id and not models.Question_Category.objects.filter(id=category_id).exists():
                return Response({
                    f"category_id with {category_id} does not exist in the database"
                }, status=status.HTTP_404_NOT_FOUND)

            questions = models.Questions.objects.filter(is_active=True).order_by("id")

            if difficulty:
                questions = questions.filter(difficulty=difficulty)
            if category_id:
                questions = questions.filter(category_id=category_id)

            # paginate the response
            paginator = PageNumberPagination()
            paginator.page_size = 1000
            paginated_questions = paginator.paginate_queryset(questions, request)

            serializer = serializers.QuestionListSerializer(paginated_questions, many=True)

            # store the paginated response in cache
            paginated_response = paginator.get_paginated_response(serializer.data).data
            try:
                cache.set(cache_key, paginated_response, 60 * 5)
            except Exception as cache_error:
                print(f"[Warning] Redis not available (SET): {cache_error}")

            return Response(paginated_response)

            # return Response({
            #         'Total num. of Questions': questions.count(),
            #         'All questions': serializer.data
            #     }, status=status.HTTP_200_OK
            # )

        except ValidationError as e:
            return Response({
                'error': str(e),
            }, status=status.HTTP_400_BAD_REQUEST
            )

        except Exception as e:
            return Response({
                'error': f'An unexpected error occurred : {e}'
            }, status=status.HTTP_500_INTERNAL_SERVER_ERROR)


class QuestionDetailView(APIView):
    """
    Returns a question details with get method
    """

    # permission_classes = [permissions.IsAuthenticated]

    def get(self, request, pk):
        try:
            question = models.Questions.objects.get(pk=pk, is_active=True)
            serializer = serializers.QuestionDetailSerializer(question)
            return Response(serializer.data, status=status.HTTP_200_OK)
        except models.Questions.DoesNotExist:
            return Response(
                {'error': 'Question not found'}, status=status.HTTP_404_NOT_FOUND
            )


class StartQuizView(APIView):
    permission_classes = [permissions.IsAuthenticated]

    def get(self, request, quiz_id):
        try:
            quiz = models.Quiz.objects.get(id=quiz_id, is_active=True)

            # check if there is an active quiz exam session
            active_session = models.QuizSession.objects.filter(user=request.user, quiz_id=quiz,
                                                               status='in_progress').first()
            if active_session:
                if active_session.is_time_expired():
                    return Response({
                        'error': 'The previous session is expired'
                    }, status=status.HTTP_400_BAD_REQUEST)

                serializer = QuizSessionSerializer(active_session)
                return Response(serializer.data, status=status.HTTP_200_OK)

            # create a new quiz session
            session = models.QuizSession.objects.create(user=request.user, quiz_id=quiz)

            # retrieve all questions related to the quiz id
            category_list = quiz.categories.all()
            question_list = list(models.Questions.objects.filter(category__in=category_list, is_active=True))

            selected_questions = random.sample(question_list, min(quiz.num_questions, len(question_list)))

            for index, question in enumerate(selected_questions):
                models.QuizSessionQuestion.objects.create(
                    quiz_session=session,
                    questions=question,
                    question_order=index
                )

            # start a new quiz session
            session.start_quiz()
            question_serializer = serializers.QuestionListSerializer(selected_questions, many=True)
            return Response({
                'msg': 'Quiz has been started',
                'session_id': f'{session.id}',
                'questions': question_serializer.data
            }, status=status.HTTP_201_CREATED)

        except models.Quiz.DoesNotExist:
            return Response({'error': 'quiz not found'}, status=status.HTTP_404_NOT_FOUND)


class SubmitAnswerView(APIView):
    """
    User single answer submission in practice mode
    """
    permission_classes = [permissions.IsAuthenticated]

    def post(self, request):
        serializer = serializers.AnswerSubmissionSerializer(data=request.data)

        if serializer.is_valid():
            # Check user has submitted the answer previously
            question = serializer.validated_data['question']
            selected_answer = serializer.validated_data['selected_answer']

            if models.UserSolutions.objects.filter(user=request.user, question=question).exists():
                return Response(
                    {"error": "You have already answered this question."},
                    status=status.HTTP_400_BAD_REQUEST,
                )

            # Check the submitted answer is correct or not
            is_correct = selected_answer.is_correct
            serializer.save(user=request.user, is_correct=is_correct)

            return Response(
                {
                    'msg': 'Solution submitted successfully.',
                    'is_correct': is_correct,
                }, status=status.HTTP_201_CREATED,
            )

        return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)


class SubmitQuizView(APIView):
    """
    User quiz submission in quiz mode. It submits all answers in a single request
    """
    permission_classes = [permissions.IsAuthenticated]

    def post(self, request):
        quiz_session_id = request.data.get('quiz_session_id')
        answers = request.data.get('answers', [])

        if not quiz_session_id or not answers:
            return Response({
                'error': 'quiz session id and answers list are required'
            }, status=status.HTTP_400_BAD_REQUEST)

        quiz_session = models.QuizSession.objects.filter(
            id=quiz_session_id,
            user=request.user
        ).first()

        if not quiz_session:
            return Response({
                'error': f'quiz session id {quiz_session_id} not found'
            }, status=status.HTTP_400_BAD_REQUEST)

        # Handle session status
        if quiz_session.status == "completed":
            return Response({"error": "Quiz already submitted"}, status=status.HTTP_400_BAD_REQUEST)

        # check both: already expired or need to make expired
        if quiz_session.status == "expired" or quiz_session.is_time_expired():
            return Response({"error": "Quiz session has expired"}, status=status.HTTP_400_BAD_REQUEST)

        for answer in answers:
            question_id = answer.get('question_id')
            selected_option_id = answer.get('selected_answer_id')

            if not question_id or not selected_option_id:
                return Response({'error': 'question_id and selected_answer_id are required'})
            try:
                question = models.Questions.objects.get(id=question_id, is_active=True)
                selected_option = models.Choices.objects.get(id=selected_option_id, question=question)
            except models.Questions.DoesNotExist:
                return Response({
                    'error': f'Question with question_id = {question_id} not found'}, status=status.HTTP_404_NOT_FOUND)
            except models.Choices.DoesNotExist:
                return Response({
                    'error': f'Selected answer with id {selected_option_id} for the question id {question_id} not found'},
                    status=status.HTTP_404_NOT_FOUND)

            if not models.QuizSessionQuestion.objects.filter(
                    quiz_session=quiz_session,
                    questions_id=question_id
            ).exists():
                return Response({
                    'error': f'The question_id={question_id} under quiz session={quiz_session_id} can\'t be found'
                }, status=status.HTTP_404_NOT_FOUND)

            # save the submitted answers
            solution = models.UserSolutions.objects.update_or_create(
                question=question,
                selected_answer=selected_option,
                is_correct=selected_option.is_correct,
                attempt_type='quiz',
                user=request.user,
                quiz_session=quiz_session
            )

        total_answered = models.UserSolutions.objects.filter(
            quiz_session=quiz_session
        ).values('question').distinct().count()

        # check whether all questions are submitted completely or partially
        if total_answered == quiz_session.questions.count():
            quiz_session.status = 'completed'
            quiz_session.save()
            return Response({
                'msg': 'Quiz is completed and submitted successfully'
            }, status=status.HTTP_201_CREATED)

        return Response({
            'msg': 'Quiz submitted partially'
        }, status=status.HTTP_201_CREATED)


class UserPracticeHistoryView(APIView):
    permission_classes = [permissions.IsAuthenticated]

    def get(self, request):
        history = models.UserSolutions.objects.filter(user=request.user).distinct('question')
        num_correct_answers = history.filter(is_correct=True).count()
        serializer = serializers.UserHistorySerializer(history, many=True)
        # correct_answered =
        return Response({
            'Num of questions attempted': history.count(),
            'num of correct answers': num_correct_answers,
            'question data': serializer.data
        }, status=status.HTTP_200_OK)
