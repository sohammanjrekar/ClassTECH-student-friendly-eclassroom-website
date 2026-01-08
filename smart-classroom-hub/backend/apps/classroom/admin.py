from django.contrib import admin
from .models import Department, Course, LiveSession

@admin.register(Department)
class DepartmentAdmin(admin.ModelAdmin):
    list_display = ('department_id', 'name', 'email', 'contact')

@admin.register(Course)
class CourseAdmin(admin.ModelAdmin):
    list_display = ('course_id', 'course_name', 'department', 'teacher_profile', 'semester')
    list_filter = ('department', 'semester')
    search_fields = ('course_name', 'course_id')

@admin.register(LiveSession)
class LiveSessionAdmin(admin.ModelAdmin):
    list_display = ('course', 'teacher', 'room_number', 'is_active', 'created_at')
    list_filter = ('is_active', 'course__department')
    # Helps the admin force-close a session if a teacher forgets to end it
    actions = ['deactivate_sessions']

    def deactivate_sessions(self, request, queryset):
        queryset.update(is_active=False)
    deactivate_sessions.short_description = "End selected live sessions"