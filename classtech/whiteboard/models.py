from django.db import models

class WhiteboardSession(models.Model):
    name = models.CharField(max_length=100)

class Drawing(models.Model):
    session = models.ForeignKey(WhiteboardSession, on_delete=models.CASCADE)
    user = models.ForeignKey('auth.User', on_delete=models.CASCADE)
    color = models.CharField(max_length=20)
    coordinates = models.TextField()