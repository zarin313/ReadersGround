
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
def login(request):

    udao=userDAO.UserDAO()

    if request.method=="GET":
        django_form=logsignfroms.loginForm()
        django_form1=logsignfroms.signupForm()
        return render(request, 'login.html', {'fl':django_form,'f2':django_form1})
    if request.method=="POST":
        django_form=logsignfroms.loginForm(request.POST)
        django_form1=logsignfroms.signupForm()

        if django_form.is_valid():

            name=django_form.cleaned_data['loginname']
            pas=django_form.cleaned_data['loginpass']

            userob=user.User('',name,'',pas,'')

            userdao=userDAO.UserDAO()

            try:
                is_valid=userdao.authenticate_user(userob)
                if is_valid is True:
                    request.session['username']=name

                    print(request.session['username'])

                    return render(request, 'home.html', {'isvalid':True,'loggedin':True} )
                else:
                    return render(request, 'login.html', {'fl':django_form,'f2':django_form1,'isvalid':False,'loggedin':False})
            except:
                return render(request, 'login.html', {'fl':django_form,'f2':django_form1,'isvalid':False,'loggedin':False})

        else:

            return render(request, 'login.html', {'fl':django_form,'f2':django_form1})
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
