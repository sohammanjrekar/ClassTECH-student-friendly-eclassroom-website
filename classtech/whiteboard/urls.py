from django.urls import path

from whiteboard.consumers import WhiteboardConsumer
from . import views

urlpatterns = [
   path('whiteboard/ws/whiteboard/', WhiteboardConsumer.as_asgi()),
]
    # Add other URL patterns as needed
]
