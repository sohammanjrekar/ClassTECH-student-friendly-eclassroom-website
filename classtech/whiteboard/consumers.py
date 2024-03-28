# consumers.py
import json
from channels.generic.websocket import AsyncWebsocketConsumer

class WhiteboardConsumer(AsyncWebsocketConsumer):
    async def connect(self):
        await self.accept()

    async def disconnect(self, close_code):
        pass

    async def receive(self, text_data):
        data = json.loads(text_data)
        action = data.get('action')
        if action == 'draw':
            await self.handle_draw(data)

    async def handle_draw(self, data):
        # Handle drawing logic here
        # For example: broadcast the drawing to other clients
        await self.channel_layer.group_send(
            "whiteboard_group",
            {
                "type": "send_drawing",
                "data": data,
            }
        )
