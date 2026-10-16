from locust import HttpUser, task, between

class QuestionUser(HttpUser):
    # wait_time = between(1,2)

    @task
    def get_questions(self):
        self.client.get("/api/question-list/", name="question-list")