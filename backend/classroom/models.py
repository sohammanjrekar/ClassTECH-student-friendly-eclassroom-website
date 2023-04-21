from django.db import models
from django.contrib.auth.models import User


class Note(models.Model):
    user = models.ForeignKey(User, on_delete=models.CASCADE,null=True)
    title = models.CharField(max_length=200)
    description = models.TextField()

    def __str__(self):
        return self.title
    class Meta:
        verbose_name_plural="1) Notes"


class Homework(models.Model):
    user = models.ForeignKey(User, on_delete=models.CASCADE,null=True)
    subject = models.CharField(max_length=50)
    title = models.CharField(max_length=100)
    description = models.TextField()
    due = models.DateTimeField(null=True)
    is_finished = models.BooleanField(default=False)

    def __str__(self):
        return self.title
    class Meta:
        verbose_name_plural="2) Homework"


class Todo(models.Model):
    user = models.ForeignKey(User, on_delete=models.CASCADE,null=True)
    title = models.CharField(max_length=100)
    is_finished = models.BooleanField(default=False)

    def __str__(self):
        return self.title
    class Meta:
        verbose_name_plural="3) Todo"