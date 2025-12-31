from django.contrib.auth.models import AbstractUser
from django.db import models

class User(AbstractUser):
    """Core account for all users with role flags."""
    is_student = models.BooleanField(default=False)
    is_teacher = models.BooleanField(default=False)

    def __str__(self):
        role = "Teacher" if self.is_teacher else "Student"
        return f"{self.username} ({role})"

class StudentProfile(models.Model):
    """Student-specific data required for Bunk-Proof logic."""
    user = models.OneToOneField(User, on_delete=models.CASCADE, related_name='student_profile')
    roll_number = models.CharField(max_length=20, unique=True)
    # Automatically extracted last digit for the 10-code verification
    last_digit = models.IntegerField(editable=False, null=True, blank=True)

    def save(self, *args, **kwargs):
        if self.roll_number:
            # Logic: If roll is 105, last_digit becomes 5
            self.last_digit = int(self.roll_number[-1])
        super().save(*args, **kwargs)

class TeacherProfile(models.Model):
    """Teacher-specific data for classroom management."""
    user = models.OneToOneField(User, on_delete=models.CASCADE, related_name='teacher_profile')
    employee_id = models.CharField(max_length=20, unique=True)
    department = models.CharField(max_length=100)