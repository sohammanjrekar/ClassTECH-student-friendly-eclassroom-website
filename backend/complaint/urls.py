from django.urls import path
from complaint import views

from rest_framework.urlpatterns import format_suffix_patterns
urlpatterns = [
    path('complaint/', views.ComplaintList.as_view()),
    path('complaint/<int:pk>/', views.ComplaintDetail.as_view()),
    path('grievance/', views.GrievanceList.as_view()),
    path('grievance/<int:pk>/', views.GrievanceDetail.as_view()),
]

urlpatterns = format_suffix_patterns(urlpatterns)