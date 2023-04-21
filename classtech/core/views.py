from django.shortcuts import render

def home_view(request):
	return render(request, "core/index.html")
def aboutus(request):
	return render(request, "core/aboutus.html")
def contactus(request):
	return render(request, "core/contactus.html")