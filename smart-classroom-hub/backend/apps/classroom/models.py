from django.db import models

class Department(models.Model):
    DEP_CHOICES = [
        ('CE', 'Civil Engineering'),
        ('CSE', 'Computer Science Engineering'),
        ('EEE', 'Electrical Engineering'),
        ('ECE', 'Electronics and Communications Engineering'),
        ('ISE', 'Information Science Engineering'),
        ('ME', 'Mechanical Engineering'),
        ('BS', 'Basic Science'),
    ]
    department_id = models.CharField(max_length=7, primary_key=True)
    name = models.CharField(max_length=3, choices=DEP_CHOICES)
    email = models.EmailField(max_length=50, default='')
    contact = models.CharField(max_length=10, default='')

    def __str__(self):
        return self.get_name_display()

class Course(models.Model):
    SEM_CHOICES = [(i, f'{i}th') for i in range(1, 9)]
    
    course_id = models.CharField(max_length=7, primary_key=True)
    course_name = models.CharField(max_length=50, default='')
    department = models.ForeignKey(Department, on_delete=models.CASCADE)
    teacher_profile = models.ForeignKey('users.TeacherProfile', on_delete=models.CASCADE)
    total_classes = models.IntegerField(default=0)
    semester = models.IntegerField(choices=SEM_CHOICES, default=1)

    def __str__(self):
        return f"{self.course_id} - {self.course_name}"

class LiveSession(models.Model):
    # Added null=True, blank=True so existing rows don't break
    course = models.ForeignKey(Course, on_delete=models.CASCADE, null=True, blank=True)
    teacher = models.ForeignKey('users.User', on_delete=models.CASCADE, null=True, blank=True)
    room_number = models.CharField(max_length=10)
    is_active = models.BooleanField(default=True)
    created_at = models.DateTimeField(auto_now_add=True)