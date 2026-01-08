from django.urls import path
from .views import AttendanceSubmissionView # Match the class name in views.py

urlpatterns = [
    path('submit/', AttendanceSubmissionView.as_view(), name='attendance-submit'),
]