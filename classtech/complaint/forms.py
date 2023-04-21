from django import forms
from django.contrib.auth.models import User
from django.contrib.auth.forms import UserCreationForm
from django.forms.widgets import DateInput
from django.shortcuts import render, redirect
from .models import Complaint
from crispy_forms.helper import FormHelper
from crispy_forms.layout import Submit
import requests

class ComplaintForm(forms.ModelForm):
    class Meta:
        model=Complaint
        fields=('Subject','Type_of_complaint','Description')
        



class statusupdate(forms.ModelForm):
    class Meta:
        model=Complaint
        fields=('status',)  
        help_texts = {
            'status': None,
          
        }      
