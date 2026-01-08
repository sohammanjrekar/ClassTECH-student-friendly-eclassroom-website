from django.db import models
from django.conf import settings

class PointType(models.Model):
    name = models.CharField(max_length=50) # e.g., "Attendance XP", "Quiz Gold"
    description = models.TextField()

class StudentPoints(models.Model):
    student = models.OneToOneField('student.StudentProfile', on_delete=models.CASCADE)
    total_xp = models.IntegerField(default=0)
    level = models.IntegerField(default=1)

class Badge(models.Model):
    name = models.CharField(max_length=100)
    description = models.TextField()
    icon = models.ImageField(upload_to='badges/')
    xp_threshold = models.IntegerField(help_text="XP needed to unlock this badge")

class EarnedBadge(models.Model):
    student = models.ForeignKey('student.StudentProfile', on_delete=models.CASCADE)
    badge = models.ForeignKey(Badge, on_delete=models.CASCADE)
    date_earned = models.DateTimeField(auto_now_add=True)