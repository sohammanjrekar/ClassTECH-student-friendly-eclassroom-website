from django.contrib import admin
from classroom import models
# Register your models here.

admin.site.register(models.Note)
admin.site.register(models.Homework)
admin.site.register(models.Todo)