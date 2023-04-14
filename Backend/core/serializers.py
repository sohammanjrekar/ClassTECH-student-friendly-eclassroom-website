from rest_framework import serializers
from . import models

class TeacherSerializer(serializers.ModelSerializer):
    class Meta:
        model = models.Teacher
        fields = ['full_name','email','password','mobileno']
        

class CayegorySerializer(serializers.ModelSerializer):
    class Meta:
        model = models.CourseCategory
        fields = ['title','description']
        
        
class CourseSerializer(serializers.ModelSerializer):
    class Meta:
        model = models.Course
        fields = ['title','description','category','teacher']
        
class StudentSerializer(serializers.ModelSerializer):
    class Meta:
        model = models.Student
        fields = ['full_name','email','password','qualification','mobileno']
        
        
class ContactusSerializer(serializers.ModelSerializer):
    class Meta:
        model = models.Contactus
        fields = ['full_name','email','message']