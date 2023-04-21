from django.urls import path
from rest_framework.urlpatterns import format_suffix_patterns
from . import views

urlpatterns = [
    path('addquiz/', views.QuizList.as_view()),
    path('addquiz/<int:pk>/', views.QuizDetail.as_view()),
    path('addquestion/', views.QuestionQuizList.as_view()),
    path('addquestion/<int:pk>/', views.QuestionQuizDetail.as_view()),
]

urlpatterns = format_suffix_patterns(urlpatterns)