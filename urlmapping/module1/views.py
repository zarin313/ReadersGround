from django.shortcuts import *
from django.http import HttpResponse
# Create your views here.

def register(request):
    return HttpResponse("Register page")
def register20(request):
    return HttpResponse("Register 20 page")
def registeryear(request,year,uname,sl):
    s="The year is "+str(year) +"uname is"+uname+" Slug is"+sl
    return HttpResponse(s)
def argument(request,v1,v2):
    s ="v1: "+str(v1)+"v2: "+v2
    return HttpResponse(s)
def regexhandle(request,revar):
    s="regular Expression: "+str(revar)
    return HttpResponse(s)

def module1view(request):
    return render(request,'home.html')
