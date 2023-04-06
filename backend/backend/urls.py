from django.contrib import admin
from django.urls import path, include
from django.conf import settings
from django.conf.urls.static import static

urlpatterns = [
    path('admin/', admin.site.urls),
    path('attendence/', include('attendence.urls')),
    path('classroom/', include('classroom.urls')),
    path('complaint/', include('complaint.urls')),


] + static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)
