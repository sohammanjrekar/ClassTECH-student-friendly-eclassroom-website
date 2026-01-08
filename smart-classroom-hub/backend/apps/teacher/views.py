import random
import redis
from django.conf import settings
from rest_framework.views import APIView
from rest_framework.response import Response
from apps.classroom.models import LiveSession

# Connect to Redis
r = redis.from_url(settings.CACHES['default']['LOCATION'])

class GenerateAttendanceCodes(APIView):
    def post(self, request, session_id):
        # 1. Verify if the session is active
        try:
            session = LiveSession.objects.get(id=session_id, is_active=True)
        except LiveSession.DoesNotExist:
            return Response({"error": "No active session found"}, status=400)

        # 2. Generate 10 random codes (one for each roll number ending 0-9)
        codes_mapping = {}
        for digit in range(10):
            code = str(random.randint(1000, 9999))
            codes_mapping[digit] = code
            
            # 3. Store in Redis with an expiry (e.g., 60 seconds)
            redis_key = f"session_{session_id}_digit_{digit}"
            r.setex(redis_key, 60, code)

        return Response({
            "message": "Codes generated successfully!",
            "codes": codes_mapping, # Teacher displays these on the smartboard
            "expires_in": 60
        })