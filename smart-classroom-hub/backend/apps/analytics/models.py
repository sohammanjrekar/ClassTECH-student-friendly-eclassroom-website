from django.db import models

class ClassAnalytics(models.Model):
    session = models.OneToOneField('classroom.LiveSession', on_delete=models.CASCADE)
    total_students_present = models.IntegerField(default=0)
    attendance_percentage = models.FloatField(default=0.0)
    # Track student engagement (e.g., number of chat questions asked)
    interaction_score = models.IntegerField(default=0) 
    last_updated = models.DateTimeField(auto_now=True)

    def __str__(self):
        return f"Analytics for {self.session.subject_name}"