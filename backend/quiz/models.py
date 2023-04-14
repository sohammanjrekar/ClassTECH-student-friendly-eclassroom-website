from django.db import models
from core.models import Teacher,Course
# Create your models here.
class Quiz(models.Model):
    teacher=models.ForeignKey(Teacher,on_delete=models.CASCADE,null=True)
    title=models.CharField(max_length=100)
    detail=models.TextField()
    add_time=models.DateTimeField(auto_now_add=True)
    def __str__(self):
        return self.title
    class Meta:
        verbose_name_plural="1) Quiz"

class QuizQuestions(models.Model):
    quiz=models.ForeignKey(Quiz,on_delete=models.CASCADE,null=True)
    Question=models.CharField(max_length=100)
    ans1=models.CharField(max_length=100)
    ans2=models.CharField(max_length=100)
    ans3=models.CharField(max_length=100)
    ans4=models.CharField(max_length=100)
    right_ans=models.CharField(max_length=100)
    add_time=models.DateTimeField(auto_now_add=True)
    def __str__(self):
        return self.Question
    class Meta:
        verbose_name_plural="2) Quiz Question"
        
class CourseQuiz(models.Model):
    course=models.ForeignKey(Course,on_delete=models.CASCADE,null=True,default='course')
    quiz=models.ForeignKey(Quiz,on_delete=models.CASCADE,null=True)
    add_time=models.DateTimeField(auto_now_add=True)
    
    class Meta:
        verbose_name_plural="3) Course Quiz"
    def __str__(self):
        return self.course
    