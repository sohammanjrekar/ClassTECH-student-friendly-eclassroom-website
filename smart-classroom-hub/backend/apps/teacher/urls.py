from django.urls import path
from .views import GenerateAttendanceCodes

urlpatterns = [
    path('generate-codes/<int:session_id>/', GenerateAttendanceCodes.as_view(), name='generate_codes'),
]