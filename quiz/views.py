from django.contrib.auth import authenticate
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
            if user and user.is_active and user.otp == None:
                return Response({
                    'msg': 'The user is already verified. Please log in'
                }, status=status.HTTP_400_BAD_REQUEST)

            #check whether the user exists but not verified
            elif user and not user.is_active and user.otp != None:
                if user.otp == received_otp:
                    user.is_active = True      # activate the inactive user
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
            user = authenticate(email=email,password=password)
            if user:
                token = get_tokens(user)
                return Response({
                    'token':token,
                    'msg': "Login Success",
                    'email': user.email,
                },status=status.HTTP_200_OK)
            else:
                return Response({
                    'errors':'email or password is incorrect'
                },status=status.HTTP_401_UNAUTHORIZED)
        return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)

class QuestionListView(APIView):
    """
    Returns all the questions list in a get method
    """
    # permission_classes = [permissions.IsAuthenticated]
    def get(self,request):
        valid_questions =  models.Questions.objects.filter(is_active=True)
        serializer = serializers.QuestionListSerializer(valid_questions, many=True)

        return Response({
            'Total num. of Questions':valid_questions.count(),
            'All questions':serializer.data
        },status=status.HTTP_200_OK)

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