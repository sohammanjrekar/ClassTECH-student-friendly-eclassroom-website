from django.urls import path,include
from django.contrib import admin
from quiz import views
from django.contrib.auth.views import LogoutView,LoginView
urlpatterns = [
    path('teacher/',include('teacher.urls')),
    path('student/',include('student.urls')),
    path('quiz/',include('quiz.urls')),
    path('todo/',include('todo.urls')),
    path('',include('core.urls')),
    path('complaint/',include('complaint.urls')),
    path('attendence/',include('attendence.urls')),
    path('classroom/',include('classroom.urls')),
    path('admin/', admin.site.urls),
]
