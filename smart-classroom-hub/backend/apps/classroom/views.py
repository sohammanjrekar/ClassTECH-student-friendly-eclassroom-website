from rest_framework import viewsets, status
from rest_framework.decorators import action
from rest_framework.response import Response
from .models import Department, Course, LiveSession
from .serializers import LiveSessionSerializer # We'll create this next

class LiveSessionViewSet(viewsets.ModelViewSet):
    queryset = LiveSession.objects.all()
    serializer_class = LiveSessionSerializer

    def get_queryset(self):
        # Teachers should only see their own sessions
        user = self.request.user
        if hasattr(user, 'teacher_profile'):
            return LiveSession.objects.filter(teacher=user)
        return LiveSession.objects.filter(is_active=True)

    @action(detail=True, methods=['post'])
    def end_session(self, request, pk=None):
        """Sets is_active to False, effectively closing the class."""
        session = self.get_object()
        session.is_active = False
        session.save()
        return Response({'status': 'Session ended successfully'})