from django.contrib import admin
from .models import AttendanceRecord

@admin.register(AttendanceRecord)
class AttendanceAdmin(admin.ModelAdmin):
    # Update display to use the course name via the session relationship
    list_display = ('student', 'get_course', 'timestamp', 'status')
    
    # FIX: Change 'session__subject_name' to 'session__course__course_name'
    list_filter = ('session__course__course_name', 'status', 'timestamp')
    
    # FIX: Update search fields to match the new relationship path
    search_fields = ('student__username', 'session__course__course_name')

    @admin.display(description='Course')
    def get_course(self, obj):
        return obj.session.course.course_name