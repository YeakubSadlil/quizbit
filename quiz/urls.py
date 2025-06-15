from django.urls import path

from .views import *

urlpatterns = [
    path("register/", RegistrationView.as_view(), name='register'),
    path("login/", LoginView.as_view(), name='login'),
    path("verify-otp/", VerifyOTPView.as_view()),
    path("question-list/", QuestionListView.as_view(), name='QuestionList'),
    path("question-detail/<int:pk>", QuestionDetailView.as_view(), name="QuestionDetail"),
    path("submit-answer/", SubmitAnswerView.as_view(), name="SubmitAnswer"),
    path("quiz/<int:quiz_id>/", StartQuizView.as_view(), name="start_quiz"),
    path("submit-quiz/", SubmitQuizView.as_view(), name="SubmitQuiz"),
    path("user_history/", UserPracticeHistoryView.as_view(), name="UserPracticeHistory"),
]
