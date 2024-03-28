# routing.py
from django.urls import path
from channels.routing import ProtocolTypeRouter, URLRouter
from myapp.consumers import WhiteboardConsumer

websocket_urlpatterns = [
    path('ws/whiteboard/<str:session_id>/', WhiteboardConsumer.as_asgi()),
]

application = ProtocolTypeRouter({
    'websocket': URLRouter(websocket_urlpatterns),
})
