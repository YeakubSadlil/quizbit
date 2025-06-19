import pytest
from django.urls import reverse
from rest_framework.test import APIClient
from quiz.models import Users

def test_home_view(request):
    client = APIClient()
    response = client.get(reverse("home"))

    assert response.status_code == 200
    assert "endpoints" in response.data

@pytest.mark.django_db
def test_register_user_successfully(request):
    client = APIClient()
    url = reverse("register")

    data = {
        "email": "sh4568@gmail.com",
        "name": "Shahed Afridi",
        "password": "1234",
        "password2": "1234"
    }

    response = client.post(url, data, format="json")

    assert response.status_code == 200
    assert response.data["msg"] == 'An OTP has been sent to your email. Please check your inbox or spam folder.'
    assert Users.objects.filter(email=data["email"]).exists()

# @pytest.mark.django_db
# def test_register_user_duplicate_email(request):
#     Users.objects.create_user(email="duplicate@gmail.com",name="Existing User", password="pass123")
#     client = APIClient()
#     url = reverse("register")
#
#     data = {
#         "email": "duplicate@gmail.com",
#         "name": "Existing User",
#         "password": "1234",
#         "password2": "1234"
#     }
#
#     response = client.post(url, data, format="json")
#
#     assert response.status_code == 400
#     assert response.data["msg"] == "User already registered. Please login."