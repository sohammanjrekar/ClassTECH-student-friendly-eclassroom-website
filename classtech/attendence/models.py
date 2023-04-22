import datetime
from django.db import models


class Course(models.Model):
    sem_choice = (
        (1, 'First'),
        (2, 'Second'),
        (3, 'Third'),
        (4, 'Fourth'),
        (5, 'Fifth'),
        (6, 'Sixth'),
        (7, 'Seventh'),
        (8, 'Eighth'),
    )
    course_id = models.CharField(max_length=7, primary_key=True)
    course_name = models.CharField(max_length=50, null=False, default='')
    dep = models.ForeignKey('Department', on_delete=models.CASCADE)
    faculty = models.ForeignKey('Faculty', on_delete=models.CASCADE)
    total_classes = models.IntegerField(null=False, default=0)
    sem = models.IntegerField(choices=sem_choice, null=False, default=1)

    def __str__(self):
        return self.course_id
    
    
    

class Department(models.Model):
    dep_choice = (
        ('CE', 'Civil Engineering'),
        ('CSE', 'Computer Science Engineering'),
        ('EEE', 'Electrical Engineering'),
        ('ECE', 'Electronics and Communications Engineering'),
        ('ISE', 'Information Science Engineering'),
        ('ME', 'Mechanical Engineering'),
        ('BS', 'Basic Science'),
    )
    depname = models.CharField(max_length=3, choices=dep_choice, primary_key=True)
    dep_email = models.CharField(max_length=50, null=False, default='')
    dep_contact = models.CharField(max_length=10, null=False, default='')
    def __str__(self):
        return self.depname


class Faculty(models.Model):
    faculty_name = models.CharField(max_length=40)
    dep = models.ForeignKey('Department', on_delete=models.CASCADE)
    ph_no = models.CharField(max_length=10)

    def __str__(self):
        return self.faculty_name

class newStudent(models.Model):
    sem_choice = (
        (1, 'First'),
        (2, 'Second'),
        (3, 'Third'),
        (4, 'Fourth'),
        (5, 'Fifth'),
        (6, 'Sixth'),
        (7, 'Seventh'),
        (8, 'Eighth'),
    )
    sem = models.IntegerField(choices=sem_choice, null=False, default=1)
    img = models.ImageField(upload_to = '', default="")
    first_name = models.CharField(max_length=70)
    last_name = models.CharField(max_length=70)
    uin = models.CharField(max_length=10)
    birth_date = models.DateField()
    phone = models.CharField(max_length=12, null=False, default='')
    parentphone = models.CharField(max_length=12, null=False, default='')
    email = models.EmailField()
    address = models.CharField(max_length=500, null=True)
    department = models.ForeignKey('Department', on_delete=models.CASCADE)
    present = models.BooleanField(default=False)
    updated = models.DateTimeField(auto_now=True)

    def __str__(self):
        return self.first_name + ' '+self.last_name



class Attendance(models.Model):
    course = models.ForeignKey('Course', on_delete=models.CASCADE)
    faculty = models.ForeignKey('Faculty', on_delete=models.CASCADE)
    uin = models.ForeignKey('newStudent', on_delete=models.CASCADE, db_column='uin')
    current_attendance = models.IntegerField(null=False, default=0)
    percent = models.IntegerField(null=False, default=0)

    def __str___(self):
        return self.uin
