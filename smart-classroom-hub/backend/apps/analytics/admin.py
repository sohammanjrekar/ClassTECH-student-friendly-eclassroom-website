from django.contrib import admin
from .models import ClassAnalytics

@admin.register(ClassAnalytics)
class AnalyticsAdmin(admin.ModelAdmin):
    list_display = ('session', 'attendance_percentage', 'total_students_present', 'interaction_score', 'last_updated')
    list_filter = ('session__course__department',)