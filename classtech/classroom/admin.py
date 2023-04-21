from django.contrib import admin
from classroom.models import *
# Register your models here.
admin.site.register(Classrooms)
admin.site.register(Students)
admin.site.register(Teachers)
admin.site.register(Assignments)
admin.site.register(Submissions)