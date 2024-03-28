# views.py
from django.shortcuts import render
from channels.generic.websocket import AsyncWebsocketConsumer
from .models import Drawing
from channels.db import database_sync_to_async
def whiteboard(request):
    return render(request, 'whiteboard/index.html')

class WhiteboardConsumer(AsyncWebsocketConsumer):
    async def connect(self):
        # Accept the WebSocket connection
        await self.accept()
        # Add the WebSocket client to a specific group
        await self.channel_layer.group_add("whiteboard_group", self.channel_name)

    async def disconnect(self, close_code):
        # Remove the WebSocket client from the group
        await self.channel_layer.group_discard("whiteboard_group", self.channel_name)

    async def receive(self, text_data):
        # Handle WebSocket messages
        data = json.loads(text_data)
        action = data.get('action')
        if action == 'draw':
            await self.handle_draw(data)

    async def handle_draw(self, data):
        # Save the drawing to the database
        await self.save_drawing(data)
        # Broadcast the drawing to other clients
        await self.channel_layer.group_send(
            "whiteboard_group",
            {
                "type": "send_drawing",
                "data": data,
            }
        )

    @database_sync_to_async
    def save_drawing(self, data):
        # Save drawing data to the database
        Drawing.objects.create(
            color=data['color'],
            coordinates=json.dumps(data['coordinates'])
        )

    # Define a separate function for broadcasting the drawing
    async def send_drawing(self, event):
        await self.send(text_data=json.dumps({
            'action': 'draw',
            'data': event['data']
        }))
