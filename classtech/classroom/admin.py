from django.contrib import admin

# Register your models here.
from classroom.models import *

admin.site.register(Classrooms)
admin.site.register(Students)
admin.site.register(Teachers)
admin.site.register(Assignments)
admin.site.register(Submissions)
admin.site.register(CustomUser)
