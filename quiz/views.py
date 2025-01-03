from distutils.command.register import register

from django.contrib.auth import authenticate
from rest_framework.exceptions import ValidationError
from rest_framework.views import APIView
from rest_framework_simplejwt.tokens import RefreshToken
from rest_framework.response import Response
from rest_framework import status,permissions
from .serializers import UserRegistrationSerializer, UserLoginSerializer
from . import models,serializers
from .emails import *
class HomeView(APIView):
    """
    Home view for the root URL
    """
    def get(self, request):
        return Response({
            "msg": "This is QuizBit, a MCQ Simulation API!",
            "endpoints":{
                "register":"/api/register/",
                "verify otp": "/api/verifiy-otp/",
                "login":"/api/login/",
                "admin data management":"/admin",
                "question lists":"/api/questionlist/",
                "question detail": "/api/question-detail/<int:pk>/",
                "submit answer": "/api/submit-answer/",
                "user histories": "/api/user_history/"
                }
        })

def get_tokens(user):
    refresh_token = RefreshToken.for_user(user)
    return {
        'refresh': str(refresh_token),
        'access' : str(refresh_token.access_token)
    }

class RegistrationView(APIView):
    def post(self, request):
        serializer = UserRegistrationSerializer(data=request.data)

        if serializer.is_valid():
            email = serializer.validated_data['email']
            existing_user = models.Users.objects.filter(email=email).first()

            if existing_user and not existing_user.is_active:
                send_otp_via_email(email)

                return Response({
                    'msg':'The user is already registered but not verified. A new OTP has been sent to your mail'
                },status=status.HTTP_200_OK)

            serializer.save()
            send_otp_via_email(serializer.data['email'])

            return Response({
                'msg':'An OTP has been sent to your email. Please check your inbox or spam folder.'
            },status=status.HTTP_200_OK)

        return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)

class VerifyOTPView(APIView):
    def post (self, request):
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

            #check whether the user exists but not verified
            elif user and not user.is_active and not user.is_verified :
                if user.otp == received_otp:
                    user.is_active = True      # activate the inactive user
                    user.is_verified = True
                    user.otp = None            # clear the otp
                    user.save()
                    return Response({
                        'msg': 'Successfully verified',
                    },status=status.HTTP_200_OK)
                else:
                    return Response({
                        'msg':'Invalid OTP'
                    },status=status.HTTP_400_BAD_REQUEST)
            else:
                return Response({
                    'msg': 'The user is not registered yet. Please register first to get a OTP'
                }, status=status.HTTP_404_NOT_FOUND)

        return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)
class LoginView(APIView):
    def post(self,request):
        serializer = UserLoginSerializer(data=request.data)
        if serializer.is_valid():
            email = serializer.data.get("email")
            password = serializer.data.get("password")
            # Djangos defualt "authenticate" is avoided as it returns only the active user
            # But we need to check OTP unverified and inactive user
            # user = authenticate(email=email,password=password)
            # print(user)
            user = models.Users.objects.filter(email=email).first()

            if user and user.check_password(password):
                if user.is_active and user.is_verified:
                    token = get_tokens(user)
                    return Response({
                        'token':token,
                           'msg': "Login Success",
                        'email': user.email,
                    },status=status.HTTP_200_OK)

                elif not user.is_active and not user.is_verified:
                    send_otp_via_email(email)
                    return Response({
                        'msg': "The user is already registered but not verified yet. A new OTP has been sent to your mail"
                    },status=status.HTTP_200_OK)

                elif not user.is_active and user.is_verified:
                    return Response({
                        'msg': "The user is blocked. Please contact the authority"
                    },status=status.HTTP_403_FORBIDDEN)

            return Response({
                'errors':'email or password is incorrect'
            },status=status.HTTP_401_UNAUTHORIZED)

        return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)

class QuestionListView(APIView):
    """
    Returns all the questions list filtered based on difficulty and category(Topic)
    - difficulty:(string) Ex: easy, medium, hard
    - category: (integer) Ex: 1, 5, 3; mapped as Physics, Chemistry ..
    """
    # permission_classes = [permissions.IsAuthenticated]

    def validate_difficulty(self, diff):
        difficulty_list = {'easy','medium','hard'}
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


    def get(self,request):
        try:
            difficulty = self.validate_difficulty(request.query_params.get('difficulty'))
            category_id = self.validate_category(request.query_params.get('category_id'))

            if category_id and not models.Question_Category.objects.filter(id=category_id).exists():
                return Response({
                    f"category_id with {category_id} does not exist in the database"
                },status=status.HTTP_404_NOT_FOUND)

            questions = models.Questions.objects.filter(is_active=True)

            if difficulty:
                questions = questions.filter(is_active=True, difficulty = difficulty)
            if category_id:
                questions = questions.filter(is_active=True, category_id = category_id)

            serializer = serializers.QuestionListSerializer(questions,many=True)

            return Response({
                    'Total num. of Questions': questions.count(),
                    'All questions': serializer.data
                }, status=status.HTTP_200_OK
            )

        except ValidationError as e:
            return Response({
                'error': str(e),
                }, status=status.HTTP_400_BAD_REQUEST
            )

        except Exception as e:
            return Response({
                'error':'An unexpected error occurred'
            }, status=status.HTTP_500_INTERNAL_SERVER_ERROR)

class QuestionDetailView(APIView):
    """
    Returns a question details with get method
    """
    # permission_classes = [permissions.IsAuthenticated]

    def get(self,request,pk):
        try:
            question = models.Questions.objects.get(pk=pk,is_active=True)
            serializer = serializers.QuestionDetailSerializer(question)
            return Response(serializer.data,status=status.HTTP_200_OK)
        except models.Questions.DoesNotExist:
            return Response(
            {'error':'Question not found'},status=status.HTTP_404_NOT_FOUND
            )

class SubmitAnswerView(APIView):
    """
    User answer submission, Validate answer correctness, save submitted answer
    """
    permission_classes = [permissions.IsAuthenticated]

    def post(self, request):
        serializer = serializers.AnswerSubmissionSerializer(data=request.data)
        # print(serializer)

        if serializer.is_valid():
            # Check user has submitted the answer previously
            question = serializer.validated_data['question']
            selected_answer = serializer.validated_data['selected_answer']

            if models.UserSolutions.objects.filter(user=request.user,question=question).exists():
                return Response(
                {"error": "You have already answered this question."},
                    status=status.HTTP_400_BAD_REQUEST,
                )

            # Check the submitted answer is correct or not
            is_correct = selected_answer.is_correct
            serializer.save(user=request.user,is_correct=is_correct)

            return Response(
                {
                    'msg':'Solution submitted successfully.',
                    'is_correct':is_correct,
                },status=status.HTTP_201_CREATED,
            )

        return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)

class UserPracticeHistoryView(APIView):
    permission_classes = [permissions.IsAuthenticated]
    def get(self,request):
        history = models.UserSolutions.objects.filter(user=request.user).distinct('question')
        num_correct_answers = history.filter(is_correct=True).count()
        serializer = serializers.UserHistorySerializer(history, many=True)
        # correct_answered =
        return Response({
            'Num of questions attempted':history.count(),
            'num of correct answers':num_correct_answers,
            'question data':serializer.data
        },status=status.HTTP_200_OK)