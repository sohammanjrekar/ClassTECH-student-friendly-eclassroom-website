from django.urls import path
from rest_framework.urlpatterns import format_suffix_patterns
from core import views

urlpatterns = [
    path('teacher/', views.TeacherList.as_view()),
    path('teacher/<int:pk>/', views.TeacherDetail.as_view()),
    path('teacherlogin/', views.teacher_login),
    path('student/', views.StudentList.as_view()),
    path('student/<int:pk>/', views.StudentDetail.as_view()),
    path('contactus/', views.ContactusList.as_view()),
    path('contactus/<int:pk>/', views.ContactusDetail.as_view()),
]

urlpatterns = format_suffix_patterns(urlpatterns)