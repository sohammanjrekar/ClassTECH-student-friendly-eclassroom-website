from django.urls import path, include
from django.contrib import admin
from django.urls import path
from core.views import home_view,aboutus,contactus
urlpatterns = [
    path('', home_view, name='home'),
    path('about/', aboutus, name='aboutus'),
    path('contact/', contactus, name='contactus'),
]
