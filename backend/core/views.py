
from django.http import Http404
from rest_framework.views import APIView
from rest_framework.response import Response
from django.views.decorators.csrf import csrf_exempt
from django.http import JsonResponse,HttpResponse
from rest_framework import status
from rest_framework import permissions
from .serializers import TeacherSerializer,StudentSerializer,ContactusSerializer
from rest_framework import generics
from django.utils.datastructures import MultiValueDictKeyError
from . import models




# TeacherDetail
class TeacherList(generics.ListCreateAPIView):
    queryset = models.Teacher.objects.all()
    serializer_class = TeacherSerializer
    # permission_classes=[permissions.IsAuthenticated]
class TeacherDetail(generics.RetrieveUpdateDestroyAPIView):
    queryset = models.Teacher.objects.all()
    serializer_class = TeacherSerializer
    # permission_classes=[permissions.IsAuthenticated]
    
@csrf_exempt
def teacher_login(request):
    email=request.POST['email']
    password=request.POST['password']
    try:
        is_private = request.POST['is_private']
    except MultiValueDictKeyError:
        is_private = False
    teacherData=models.Teacher.objects.get(email=email,password=password,is_private=is_private)
    if teacherData:
        return JsonResponse({'bool':True})
    else :
        return JsonResponse({'bool':False})






# StudentDetail
class StudentList(generics.ListCreateAPIView):
    queryset = models.Teacher.objects.all()
    serializer_class = StudentSerializer
    # permission_classes=[permissions.IsAuthenticated]
class StudentDetail(generics.RetrieveUpdateDestroyAPIView):
    queryset = models.Teacher.objects.all()
    serializer_class = StudentSerializer
    # permission_classes=[permissions.IsAuthenticated]
    




# Contactus
class ContactusList(generics.ListCreateAPIView):
    queryset = models.Contactus.objects.all()
    serializer_class = ContactusSerializer
    # permission_classes=[permissions.IsAuthenticated]
class ContactusDetail(generics.RetrieveUpdateDestroyAPIView):
    queryset = models.Contactus.objects.all()
    serializer_class = ContactusSerializer
    # permission_classes=[permissions.IsAuthenticated]

