from django.db import models
from django.conf import settings

from django.contrib.auth.models import BaseUserManager, AbstractBaseUser
from django.db.models import BooleanField
from django.utils import timezone
from datetime import timedelta


class UserManager(BaseUserManager):
    def create_user(self, email, name, password=None, password2=None):

        if not email:
            raise ValueError("Users must have an email address")

        user = self.model(
            email=self.normalize_email(email),
            name=name,
        )
        user.is_active = False
        user.set_password(password)
        user.save(using=self._db)
        return user

    def create_superuser(self, email, name, password=None):

        user = self.create_user(
            email,
            password=password,
            name=name,
        )
        user.is_admin = True
        user.is_active = True
        user.save(using=self._db)
        return user

class Users(AbstractBaseUser):
    email = models.EmailField(
        verbose_name="email address",
        max_length=50,
        unique=True,
    )

    name = models.CharField(max_length=50)
    is_active = models.BooleanField(default=False)
    is_verified = models.BooleanField(default=False)
    is_admin = models.BooleanField(default=False)
    otp = models.CharField(max_length=6,null=True,blank=True)
    created_at = models.DateTimeField(auto_now_add=True)
    modified = models.DateTimeField(auto_now=True)
    objects = UserManager()

    USERNAME_FIELD = "email"
    REQUIRED_FIELDS = ["name"]

    def __str__(self):
        return self.email

    def has_perm(self, perm, obj=None):
        return True

    def has_module_perms(self, app_label):
        return True

    @property
    def is_staff(self):
        return self.is_admin

class Question_Category(models.Model):
    name = models.CharField(max_length=80)
    description = models.TextField(blank=True)
    created_at = models.DateTimeField(auto_now_add=True)

    def __str__(self):
        return self.name

class Questions(models.Model):
    difficulty_choice = [
        ('easy','Easy'),
        ('medium','Medium'),
        ('hard','Hard'),
    ]

    category = models.ForeignKey(Question_Category, on_delete=models.CASCADE)
    text = models.TextField()
    difficulty = models.CharField(max_length=15, choices=difficulty_choice, default='easy')
    is_active = models.BooleanField(default=True)
    created_at = models.DateTimeField(auto_now_add=True)

    def __str__(self):
        return self.text[:40]

class Choices(models.Model):
    question = models.ForeignKey(Questions,on_delete=models.CASCADE, db_column='question_id')
    option = models.TextField(max_length=200)
    is_correct = models.BooleanField(default=False)
    created_at = models.DateTimeField(auto_now_add=True)

    def __str__(self):
        return self.option

# Quiz configuration table
class Quiz(models.Model):
    title = models.CharField(max_length=250)
    descriptions = models.TextField(blank=True)
    num_questions = models.IntegerField(default=5)
    quiz_duration_min = models.IntegerField(default=10)
    is_active = BooleanField(default=True)
    categories = models.ManyToManyField(Question_Category)

    def __str__(self):
        return self.title

    class Meta:
        db_table = 'quiz_info'

# Quiz session management table
class QuizSession(models.Model):
    status_choices = [
        ('expired','Expired'),
        ('not_started','Not Started'),
        ('completed','Completed'),
        ('in_progress','In Progress')
    ]
    user = models.ForeignKey(settings.AUTH_USER_MODEL, on_delete=models.CASCADE)
    quiz_id = models.ForeignKey(Quiz, on_delete=models.CASCADE)
    status = models.CharField(max_length=50,choices=status_choices,default='not_started')
    questions = models.ManyToManyField(Questions,through='QuizSessionQuestion')
    start_time = models.DateTimeField(null=True, blank=True)
    end_time = models.DateTimeField(null=True, blank=True)
    score = models.IntegerField(null=True,blank=True)
    created_at = models.DateTimeField(auto_now_add=True)

    def start_quiz(self):
        if self.status == 'not_started':
            self.start_time = timezone.now()
            self.end_time = self.start_time + timedelta(minutes=self.quiz_id.quiz_duration_min)
            self.status = 'in_progress'
            self.save()

    def is_time_expired(self):
        if timezone.now() > self.end_time:
            self.status = 'expired'
            self.save()
            return True
        else:
            return False

# Quiz session question table
class QuizSessionQuestion(models.Model):
    quiz_session = models.ForeignKey(QuizSession, on_delete=models.CASCADE)
    questions = models.ForeignKey(Questions, on_delete=models.CASCADE)
    question_order = models.IntegerField()

    class Meta:
        ordering = ['question_order']

class UserSolutions(models.Model):
    user = models.ForeignKey(settings.AUTH_USER_MODEL, on_delete=models.CASCADE)
    question = models.ForeignKey(Questions,on_delete=models.CASCADE)
    selected_answer = models.ForeignKey(Choices,on_delete=models.CASCADE)
    is_correct = models.BooleanField(default=False)
    answered_at = models.DateTimeField(auto_now_add=True)
    quiz_session = models.ForeignKey(QuizSession, on_delete=models.CASCADE, null=True, blank=True)
    attempt_types = [
        ('practice','Practice Mode'),
        ('quiz','Quiz Exam')
    ]
    attempt_type = models.CharField(max_length=20,choices=attempt_types,default='practice')