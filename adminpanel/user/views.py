from django.shortcuts import render

# Create your views here.
def loginview(request):
    #list of product objects
    return render(request, 'login.html')