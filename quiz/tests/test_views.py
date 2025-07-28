from unittest.mock import patch

import pytest
from django.core.cache import cache
from django.urls import reverse
from rest_framework.test import APIClient
from rest_framework.throttling import AnonRateThrottle
from quiz.views import RegistrationView
from quiz.models import Users

class TestRegisterThrottle(AnonRateThrottle):
    scope = "test_register",
    rate = "5/min"

@pytest.fixture(autouse=True)
def clear_cache():
    cache.clear()


@pytest.fixture()
def api_client():
    return APIClient()


@pytest.fixture()
def create_user():
    def create_users(**kwargs):
        return Users.objects.create_user(**kwargs)

    return create_users


def register(api_client, data):
    url = reverse("register")
    return api_client.post(url, data, format="json")


def test_home_view(request):
    client = APIClient()
    response = client.get(reverse("home"))

    assert response.status_code == 200
    assert "endpoints" in response.data


@pytest.mark.django_db
@patch("quiz.views.send_otp_via_email")
def test_register_user_successfully(mock_send_otp, api_client):
    data = {
        "email": "sh4568@gmail.com",
        "name": "Shahed Afridi",
        "password": "1234",
        "password2": "1234"
    }

    response = register(api_client, data)

    assert response.status_code == 201
    assert response.data["message"] == 'An OTP has been sent to your email. Please check your inbox or spam folder.'
    assert Users.objects.filter(email=data["email"]).exists()
    mock_send_otp.assert_called_once_with(data["email"])


@pytest.mark.django_db
@patch("quiz.views.send_otp_via_email", side_effect=Exception("Mail service down"))
def test_register_email_send_failure(mock_send_otp, api_client):
    data = {
        "email": "sh4568@gmail.com",
        "name": "Shahed Afridi",
        "password": "1234",
        "password2": "1234"
    }

    response = register(api_client, data)
    assert response.status_code == 500


@pytest.mark.django_db
def test_register_user_duplicate_email(api_client, create_user):
    user = create_user(email="duplicate@gmail.com", name="Existing User", password="1234")
    user.is_active = True
    user.is_verified = True
    user.save()

    data = {
        "email": "duplicate@gmail.com",
        "name": "Existing User",
        "password": "1234",
        "password2": "1234"
    }

    response = register(api_client, data)
    assert response.status_code == 409


@pytest.mark.django_db
def test_register_deactivated_user(api_client, create_user):
    user = create_user(email="deactivated_user@gmail.com", name="Deactivated User", password="pass123")
    user.is_active = False
    user.is_verified = True
    user.save()

    data = {
        "email": "deactivated_user@gmail.com",
        "name": "Deactivated User",
        "password": "1234",
        "password2": "1234"
    }

    response = register(api_client, data)
    assert response.status_code == 403
    assert response.data["error"] == "User is deactivated. Please contact the administrator"


@pytest.mark.django_db
@patch("quiz.views.send_otp_via_email")
def test_register_unverified_user(mock_send_otp, api_client, create_user):
    user = create_user(email="unverified_user@gmail.com", name="Unverified User", password="pass123")
    user.is_active = False
    user.is_verified = False
    user.save()

    data = {
        "email": "unverified_user@gmail.com",
        "name": "Unverified User",
        "password": "1234",
        "password2": "1234"
    }

    response = register(api_client, data)
    assert response.status_code == 200
    assert response.data[
               "message"] == "The user is already registered but not verified. A new OTP has been sent to your mail"
    mock_send_otp.assert_called_once_with(data["email"])


@pytest.mark.django_db
def test_register_missing_email(api_client):
    data = {
        "name": "Unverified User",
        "password": "1234",
        "password2": "1234"
    }

    response = register(api_client, data)
    assert response.status_code == 400


@pytest.mark.django_db
def test_register_invalid_email_format(api_client):
    data = {
        "email": "invalid_email",
        "name": "Invalid Email",
        "password": "1234",
        "password2": "1234"
    }

    response = register(api_client, data)
    assert response.status_code == 400


@pytest.mark.django_db
def test_register_password_missmatch(api_client):
    data = {
        "email": "example@gmail.com",
        "name": "User Name",
        "password": "1234",
        "password2": "12"
    }

    response = register(api_client, data)
    assert response.status_code == 400

@pytest.mark.django_db
@patch("quiz.views.send_otp_via_email")
def test_register_throttle(mock_send_otp, api_client):
    # override default throttling for test purpose
    original_throttle = RegistrationView.throttle_classes
    RegistrationView.throttle_classes = [TestRegisterThrottle]
    try:
        for i in range(5):
            data = {
                "email": f"example{i}@gmail.com",
                "name": "User Name",
                "password": "1234",
                "password2": "1234"
            }
            response = register(api_client, data)
            assert response.status_code == 201

        data = {
            "email": f"example_throttle@gmail.com",
            "name": "User Name",
            "password": "1234",
            "password2": "1234"
        }

        response = register(api_client, data)
        assert response.status_code == 429
        assert mock_send_otp.call_count == 5  # 6th call will be throttled
    finally:
        RegistrationView.throttle_classes = original_throttle
