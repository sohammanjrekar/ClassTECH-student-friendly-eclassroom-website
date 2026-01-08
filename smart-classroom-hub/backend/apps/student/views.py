from rest_framework.views import APIView
from rest_framework.response import Response
from apps.attendance.models import AttendanceRecord
from apps.classroom.models import LiveSession
import redis
from django.conf import settings

r = redis.from_url(settings.CACHES['default']['LOCATION'])

class SubmitAttendance(APIView):
    def post(self, request):
        session_id = request.data.get('session_id')
        entered_code = request.data.get('code')
        user = request.user

        # 1. Get the student's roll number last digit
        # We created this logic in the StudentProfile.save() method earlier
        last_digit = user.student_info.last_digit 

        # 2. Verify code from Redis
        redis_key = f"session_{session_id}_digit_{last_digit}"
        stored_code = r.get(redis_key)

        if stored_code and stored_code.decode('utf-8') == entered_code:
            # 3. If correct, save the record to PostgreSQL
            session = LiveSession.objects.get(id=session_id)
            AttendanceRecord.objects.get_or_create(student=user, session=session)
            return Response({"message": "Attendance marked successfully! ✅"})
        
        return Response({"error": "Invalid or expired code ❌"}, status=400)