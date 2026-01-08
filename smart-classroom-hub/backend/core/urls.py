from django.contrib import admin
from django.urls import path, include

urlpatterns = [
    path('admin/', admin.site.urls),
    path('api/users/', include('apps.users.urls')),
    path('api/classroom/', include('apps.classroom.urls')), # Added 'apps.' prefix
    path('api/attendance/', include('apps.attendance.urls')), # Added 'apps.' prefix
    # ... and so on for other apps
]