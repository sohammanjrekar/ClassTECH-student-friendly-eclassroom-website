from rest_framework.views import APIView
from rest_framework.response import Response
from apps.attendance.models import AttendanceRecord
from apps.classroom.models import LiveSession
from apps.interaction.models import LiveChat
from .models import ClassAnalytics

class TeacherDashboardAnalytics(APIView):
    def get(self, request, session_id):
        # 1. Get Session Data
        session = LiveSession.objects.get(id=session_id)
        
        # 2. Calculate Attendance Stats
        present_count = AttendanceRecord.objects.filter(session=session).count()
        # Mocking total enrollment as 60 for percentage calculation
        attendance_rate = (present_count / 60) * 100 
        
        # 3. Calculate Interaction (Shy Chat) stats
        chat_count = LiveChat.objects.filter(session=session).count()

        # 4. Update or Create Snapshot
        analytics, _ = ClassAnalytics.objects.update_or_create(
            session=session,
            defaults={
                'total_students_present': present_count,
                'attendance_percentage': round(attendance_rate, 2),
                'interaction_score': chat_count
            }
        )

        return Response({
            "subject": session.course.course_name,
            "attendance": f"{analytics.attendance_percentage}%",
            "total_present": analytics.total_students_present,
            "chat_activity": analytics.interaction_score,
            "status": "Healthy" if analytics.attendance_percentage > 75 else "Low Attendance"
        })