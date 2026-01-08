from rest_framework import serializers
from .models import LiveSession, Course

class LiveSessionSerializer(serializers.ModelSerializer):
    course_name = serializers.ReadOnlyField(source='course.course_name')
    teacher_name = serializers.ReadOnlyField(source='teacher.get_full_name')

    class Meta:
        model = LiveSession
        fields = ['id', 'course', 'course_name', 'teacher', 'teacher_name', 'room_number', 'is_active', 'created_at']