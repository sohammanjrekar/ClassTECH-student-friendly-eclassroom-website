
from django.contrib import admin
from django.urls import path,include

urlpatterns = [
    path('admin/', admin.site.urls),
    path('core/', include('core.urls')),
    path('quiz/', include('quiz.urls')),
    path('complaint/', include('complaint.urls')),
    path('classroom/', include('classroom.urls')),
     path('api-auth/', include('rest_framework.urls')),
]
