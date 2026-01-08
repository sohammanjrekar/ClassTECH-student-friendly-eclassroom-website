from django.db import models
from django.conf import settings

class AttendanceRecord(models.Model):
    """Stores the verification results of Face + Code check."""
    
    # 1. Link to the Core User (Student)
    student = models.ForeignKey(
        settings.AUTH_USER_MODEL, 
        on_delete=models.CASCADE, 
        related_name='attendance_records'
    )
    
    # 2. Link to the Specific Live Session
    session = models.ForeignKey(
        'classroom.LiveSession', 
        on_delete=models.CASCADE, 
        related_name='attendees'
    )
    
    # 3. Data tracking
    timestamp = models.DateTimeField(auto_now_add=True)
    
    # status can be 'Present', 'Late', or 'Excused'
    status = models.CharField(max_length=20, default='Present')

    class Meta:
        # Prevent a student from marking attendance twice for the same class session
        unique_together = ('student', 'session')
        verbose_name = "Attendance Record"
        verbose_name_plural = "Attendance Records"

    def __str__(self):
        return f"{self.student.username} - {self.session.course.course_name} - {self.status}"