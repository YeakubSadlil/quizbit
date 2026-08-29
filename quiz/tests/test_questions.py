import pytest
from ..throttles import AnonTokenBucketThrottle
from ..models import Questions, Question_Category
from ..views import QuestionListView

# custom throttle classes only for Test, to avoid the use of original conf
class QuestionListTestTokenBucketThrottle(AnonTokenBucketThrottle):
    capacity = 5
    refill_rate = capacity / 60

@pytest.mark.django_db
def test_questionlist_tokenbucket_throttle(get_question_list, monkeypatch):
    # override default throttling for test purpose, we can't use override
    # settings as this custom throttle class doesn't have scope in global settings
    monkeypatch.setattr(QuestionListView, "throttle_classes", [QuestionListTestTokenBucketThrottle])

    # create a dummy question and question_category
    category = Question_Category.objects.create(name="Test_catg")
    Questions.objects.create(text="Who are you?",category=category)
    for i in range(QuestionListTestTokenBucketThrottle.capacity):
        response = get_question_list()
        assert response.status_code == 200

    response = get_question_list()
    assert response.status_code == 429