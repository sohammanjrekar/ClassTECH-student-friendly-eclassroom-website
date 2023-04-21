from django.db import models

# Create your models here.
class Teacher(models.Model):
    full_name=models.CharField(max_length=100)
    email=models.CharField(max_length=100)
    password=models.CharField(max_length=100)
    mobileno=models.CharField(max_length=20)
    
    def __str__(self):
        return self.full_name
    class Meta:
        verbose_name_plural="1) Teachers"
   
class CourseCategory(models.Model):
    title=models.CharField(max_length=100)
    description=models.CharField(max_length=100)
    def __str__(self):
        return self.title 
    class Meta:
        verbose_name_plural="2) Course Categories"


class Course(models.Model):
    category=models.ForeignKey(CourseCategory, on_delete=models.CASCADE)
    teacher=models.ForeignKey(Teacher, on_delete=models.CASCADE)
    title=models.CharField(max_length=100)
    description=models.CharField(max_length=100)
    def __str__(self):
        return self.title
    class Meta:
        verbose_name_plural="3) Courses"


class Student(models.Model):
    full_name=models.CharField(max_length=100)
    email=models.CharField(max_length=100)
    password=models.CharField(max_length=100)
    mobileno=models.CharField(max_length=20)
    def __str__(self):
        return self.full_name
    class Meta:
        verbose_name_plural="4) Students"
        
        
        
class Contactus(models.Model):
    full_name=models.CharField(max_length=100)
    email=models.CharField(max_length=100)
    message=models.TextField()
    def __str__(self):
        return self.full_name
    class Meta:
        verbose_name_plural="5) contactus"

