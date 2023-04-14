from django.shortcuts import render
from django.http import Http404
from rest_framework.views import APIView
from rest_framework.response import Response
from django.views.decorators.csrf import csrf_exempt
from django.http import JsonResponse,HttpResponse
from rest_framework import status
from rest_framework import permissions
from rest_framework import generics
from django.utils.datastructures import MultiValueDictKeyError
from . import models
from .serializers import QuizSerializer,CourseQuizSerializer,QuestionQuizSerializer
# Create your views here.
# QuizDetail
class QuizList(generics.ListCreateAPIView):
    queryset = models.Quiz.objects.all()
    serializer_class = QuizSerializer
    # permission_classes=[permissions.IsAuthenticated]
class QuizDetail(generics.RetrieveUpdateDestroyAPIView):
    queryset = models.Quiz.objects.all()
    serializer_class = QuizSerializer
    # permission_classes=[permissions.IsAuthenticated]
    
    
# Create your views here.
# QuizDetail
class CourseQuizList(generics.ListCreateAPIView):
    queryset = models.CourseQuiz.objects.all()
    serializer_class = CourseQuizSerializer
    # permission_classes=[permissions.IsAuthenticated]
class CourseQuizDetail(generics.RetrieveUpdateDestroyAPIView):
    queryset = models.CourseQuiz.objects.all()
    serializer_class = CourseQuizSerializer
    # permission_classes=[permissions.IsAuthenticated]
    
    
# Create your views here.
# QuizDetail
class QuestionQuizList(generics.ListCreateAPIView):
    queryset = models.QuizQuestions.objects.all()
    serializer_class = QuestionQuizSerializer
    # permission_classes=[permissions.IsAuthenticated]
class QuestionQuizDetail(generics.RetrieveUpdateDestroyAPIView):
    queryset = models.QuizQuestions.objects.all()
    serializer_class = QuestionQuizSerializer
    # permission_classes=[permissions.IsAuthenticated]