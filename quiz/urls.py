from django.urls import path

from .views import *

urlpatterns = [
    path("register/", RegistrationView.as_view(), name='register'),
    path("login/", LoginView.as_view(), name='login'),
    path("verify-otp/", VerifyOTPView.as_view(), name='verifyOTP'),
    path("question-list/", QuestionListView.as_view(), name='questionList'),
    path("question-detail/<int:pk>", QuestionDetailView.as_view(), name="questionDetail"),
    path("submit-answer/", SubmitAnswerView.as_view(), name="submitAnswer"),
    path("quiz/<int:quiz_id>/", StartQuizView.as_view(), name="startQuiz"),
    path("submit-quiz/", SubmitQuizView.as_view(), name="submitQuiz"),
    path("user_history/", UserPracticeHistoryView.as_view(), name="userPracticeHistory"),
]
