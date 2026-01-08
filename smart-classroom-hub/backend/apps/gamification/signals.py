from django.db.models.signals import post_save
from django.dispatch import receiver
from apps.attendance.models import AttendanceRecord
from .models import StudentPoints

@receiver(post_save, sender=AttendanceRecord)
def reward_attendance_xp(sender, instance, created, **kwargs):
    if created and instance.status == 'Present':
        # Get or create points record for the student
        points, _ = StudentPoints.objects.get_or_create(student=instance.student)
        points.total_xp += 100  # Reward 100 XP for attending!
        points.save()