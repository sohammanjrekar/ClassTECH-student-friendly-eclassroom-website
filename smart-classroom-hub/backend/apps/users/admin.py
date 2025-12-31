from django.contrib import admin
from django.contrib.auth.admin import UserAdmin
from .models import User, StudentProfile, TeacherProfile

class StudentInline(admin.StackedInline):
    model = StudentProfile
    can_delete = False

class TeacherInline(admin.StackedInline):
    model = TeacherProfile
    can_delete = False

@admin.register(User)
class CustomUserAdmin(UserAdmin):
    list_display = ('username', 'email', 'is_student', 'is_teacher', 'is_staff')
    fieldsets = UserAdmin.fieldsets + (
        ('Roles', {'fields': ('is_student', 'is_teacher')}),
    )
    inlines = [StudentInline, TeacherInline]