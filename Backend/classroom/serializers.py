from rest_framework import serializers
from . import models

class NoteSerializer(serializers.ModelSerializer):
    class Meta:
        model = models.Note
        fields = ['user','title','description']
        

class HomeworkSerializer(serializers.ModelSerializer):
    class Meta:
        model = models.Homework
        fields = ['user','subject','title','description' ]
        
        

class TodoSerializer(serializers.ModelSerializer):
    class Meta:
        model = models.Todo
        fields = ['user','title','is_finished']