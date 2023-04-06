from django.urls import path
from complaint import views

urlpatterns = [
    path('', views.index, name='index'),
    path('counter/', views.counter, name='counter'),
    path('solved/', views.solved,  name='solved'),
    path('list/', views.list,  name='list'),
    path('pdf/', views.pdf_view, name='view'),
    path('pdf_g/', views.pdf_viewer,  name='view'),
    path('slist/', views.slist,  name='view'),
    path('dashboard/', views.dashboard, name='dashboard'),
    path('complaints/', views.complaints, name='complaints'),
    path('allcomplaints/', views.allcomplaints, name='allcomplaints')
]
