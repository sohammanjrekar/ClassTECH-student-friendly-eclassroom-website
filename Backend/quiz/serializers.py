from rest_framework import serializers
from . import models

class QuizSerializer(serializers.ModelSerializer):
    class Meta:
        model = models.Quiz
        fields = ['teacher','title','detail','add_time']
        

class CourseQuizSerializer(serializers.ModelSerializer):
    class Meta:
        model = models.CourseQuiz
        fields = ['course','quiz','add_time']
        
        

class QuestionQuizSerializer(serializers.ModelSerializer):
    class Meta:
        model = models.QuizQuestions
        fields = ['quiz','Question' ,'ans1' ,'ans2' ,'ans3', 'ans4' ,'right_ans', 'add_time']