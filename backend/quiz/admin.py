from django.contrib import admin

# Register your models here.
from quiz import models
# Register your models here.

admin.site.register(models.Quiz)
admin.site.register(models.QuizQuestions)
admin.site.register(models.CourseQuiz)