import pytest
from django.urls import reverse
from rest_framework.test import APIClient
from quiz.models import Users
from django.test import override_settings
from django.core.cache import cache

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


def register(api_client,data):
    url = reverse("register")
    return api_client.post(url, data, format="json")


def test_home_view(request):
    client = APIClient()
    response = client.get(reverse("home"))

    assert response.status_code == 200
    assert "endpoints" in response.data


@pytest.mark.django_db
def test_register_user_successfully(api_client):

    data = {
        "email": "sh4568@gmail.com",
        "name": "Shahed Afridi",
        "password": "1234",
        "password2": "1234"
    }

    response = register(api_client,data)

    assert response.status_code == 200
    assert response.data["msg"] == 'An OTP has been sent to your email. Please check your inbox or spam folder.'
    assert Users.objects.filter(email=data["email"]).exists()


@pytest.mark.django_db
def test_register_user_duplicate_email(api_client,create_user):
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

    response = register(api_client,data)
    assert response.status_code == 400


@pytest.mark.django_db
def test_register_deactivated_user(api_client,create_user):
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

    response = register(api_client,data)
    assert response.status_code == 400
    assert response.data["msg"] == "User is deactivated. Please contact the administrator"


@pytest.mark.django_db
def test_register_unverified_user(api_client,create_user):
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

    response = register(api_client,data)
    assert response.status_code == 200
    assert response.data[
               "msg"] == "The user is already registered but not verified. A new OTP has been sent to your mail"


@pytest.mark.django_db
def test_register_missing_email(api_client):
    data = {
        "name": "Unverified User",
        "password": "1234",
        "password2": "1234"
    }

    response = register(api_client,data)
    assert response.status_code == 400
    assert "email" in response.data


@pytest.mark.django_db
def test_register_invalid_email_format(api_client):
    data = {
        "email": "invalid_email",
        "name": "Invalid Email",
        "password": "1234",
        "password2": "1234"
    }

    response = register(api_client,data)
    assert response.status_code == 400
    assert "email" in response.data


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
    assert "non_field_errors" in response.data

# @override_settings(
#     REST_FRAMEWORK={
#         'DEFAULT_THROTTLE_CLASSES': ['quiz.throttles.RegisterThrottle'],
#         'DEFAULT_THROTTLE_RATES': {
#             'register': '30/min',
#         }
#     }
# )
@pytest.mark.django_db
def test_register_throttle(api_client):
    for i in range(50):
        data = {
            "email": f"example{i}@gmail.com",
            "name": "User Name",
            "password": "1234",
            "password2": "1234"
        }
        response = register(api_client, data)
        assert response.status_code == 200

    data = {
        "email": f"example_throttle@gmail.com",
        "name": "User Name",
        "password": "1234",
        "password2": "1234"
    }

    response = register(api_client, data)
    assert response.status_code == 429