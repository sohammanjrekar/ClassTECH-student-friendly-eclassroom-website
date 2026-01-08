import cv2
import numpy as np
import redis
import face_recognition
from rest_framework.views import APIView
from rest_framework.response import Response
from django.conf import settings

from .simple_face_rec import SimpleFacerec
# Use this style consistently
from apps.classroom.models import LiveSession 
from apps.attendance.models import AttendanceRecord

# Connect to Redis for fast code verification
r = redis.from_url(settings.CACHES['default']['LOCATION'])

class AttendanceSubmissionView(APIView):
    def post(self, request):
        user = request.user
        session_id = request.data.get('session_id')
        entered_code = request.data.get('code')
        uploaded_image = request.FILES.get('image') # Selfie from student's phone

        if not uploaded_image:
            return Response({"error": "Selfie is required for verification 📸"}, status=400)

        # 1. VERIFY: 4-Digit Code via Redis
        # Uses the last digit of roll number for targeted security
        try:
            last_digit = user.student_info.last_digit 
            redis_key = f"session_{session_id}_digit_{last_digit}"
            stored_code = r.get(redis_key)

            if not stored_code or stored_code.decode('utf-8') != str(entered_code):
                return Response({"error": "Invalid or expired code ❌"}, status=400)
        except Exception:
            return Response({"error": "Student profile data missing 👤"}, status=400)

        # 2. VERIFY: Face Recognition
        sfr = SimpleFacerec()
        
        try:
            # Load the student's registered image from their profile
            student_img_path = user.student_info.image.path 
            img = cv2.imread(student_img_path)
            rgb_img = cv2.cvtColor(img, cv2.COLOR_BGR2RGB)
            
            # Identify the student based on their own profile picture only
            known_encodings = face_recognition.face_encodings(rgb_img)
            if not known_encodings:
                return Response({"error": "Profile picture is not clear enough. 👤"}, status=400)
            
            sfr.known_face_encodings = [known_encodings[0]]
            sfr.known_face_names = [user.username]

            # Process the uploaded selfie
            nparr = np.frombuffer(uploaded_image.read(), np.uint8)
            frame = cv2.imdecode(nparr, cv2.IMREAD_COLOR)
            
            # Use your helper class to detect the face
            _, face_names = sfr.detect_known_faces(frame)

        except Exception as e:
            return Response({"error": f"Facial processing error: {str(e)} ⚠️"}, status=500)

        # 3. FINAL MARKING: Save to PostgreSQL
        if user.username in face_names:
            try:
                session = LiveSession.objects.get(id=session_id, is_active=True)
                AttendanceRecord.objects.get_or_create(
                    student=user, 
                    session=session,
                    defaults={'status': 'Present'}
                )
                return Response({"message": "Face & Code Verified! Attendance Marked ✅"})
            except LiveSession.DoesNotExist:
                return Response({"error": "This session is no longer active 🛑"}, status=400)
        
        return Response({"error": "Face match failed. Try again! 👤"}, status=400)