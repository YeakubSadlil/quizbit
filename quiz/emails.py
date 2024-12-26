from django.core.mail import send_mail
import random
from django.conf import settings
from .models import Users

def send_otp_via_email(email):
    subject = "Account verification mail"
    otp = random.randint(1000,9999)
    message = f"Your OTP is {otp}"
    email_from = settings.EMAIL_HOST
    send_mail(subject,message,email_from,[email])
    user_obj = Users.objects.get(email=email)
    user_obj.otp = otp  # save the otp to database
    user_obj.save()