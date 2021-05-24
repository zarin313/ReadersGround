
from django.shortcuts import *
from django.http import HttpResponse
from . import logsignfroms
from django.core.files.storage import FileSystemStorage
from .userdbop import user
from .userdbop import userDAO

# Create your views here.
def loginview(request):
    #list of product objects
    return render(request, 'login.html')
def signup(request):
    
    udao=userDAO.UserDAO()
    
    if request.method=="GET":
        django_form=logsignfroms.signupForm()
        return render(request, 'login.html', {'f':django_form})

    elif request.method=="POST":
        django_form=logsignfroms.signupForm(request.POST)
        if django_form.is_valid():
            name=django_form.cleaned_data['name']
            uname=django_form.cleaned_data['uname']
            email=django_form.cleaned_data['email']
          
            pas=django_form.cleaned_data['pas']
            confpas=django_form.cleaned_data['confpas']

            userob=user.User(name,uname,email,pas,confpas)
            userdao=userDAO.UserDAO()

            try:
                if (userdao.sameuname(userob)==True):
                    #print("fvsdvfsv")
                    return render(request, 'login.html', {'f':django_form,'success':False,'successsame':True})

                userdao.insertUser(userob)
                django_form=logsignfroms.signupForm()
                return render(request, 'login.html', { 'success':True})
            except:
                return render(request, 'login.html', {'f':django_form, 'success':False})
        else:
            return render(request, 'login.html', {'f':django_form})