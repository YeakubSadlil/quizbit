import pytest
from django.core.cache import cache
from django.urls import reverse
from rest_framework.test import APIClient
from quiz.models import Users


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

@pytest.fixture()
def register_user(api_client):
    def _register(data):
        url = reverse("register")
        return api_client.post(url, data, format="json")
    return _register

@pytest.fixture()
def get_question_list(api_client):
    def _get():
        url = reverse("questionList")
        return api_client.get(url)
    return _get
