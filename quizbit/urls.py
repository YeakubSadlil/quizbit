
from django.contrib import admin
from django.urls import path,include
from quiz.views import HomeView
urlpatterns = [
    path('', HomeView.as_view(), name = 'Home'),
    path('admin/', admin.site.urls),
    path('api/', include('quiz.urls')),
]