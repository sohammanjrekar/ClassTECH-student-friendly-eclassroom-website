from django.urls import path
from .views import TeacherDashboardAnalytics

urlpatterns = [
    path('session/<int:session_id>/', TeacherDashboardAnalytics.as_view(), name='session-stats'),
]