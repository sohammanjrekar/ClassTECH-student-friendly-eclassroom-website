from rest_framework import serializers
from . import models

class ComplaintSerializer(serializers.ModelSerializer):
    class Meta:
        model = models.Complaint
        fields = ['Subject','user','Type_of_complaint','Description','Time','status' ]
        

class GrievanceSerializer(serializers.ModelSerializer):
    class Meta:
        model = models.Grievance
        fields = ['Subject','Description','Time', 'guser' ]
        
