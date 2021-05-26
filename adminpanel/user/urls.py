from django.urls import *
from . import views

urlpatterns=[

    path('',views.loginview,name="loginview"),
    path('signup/',views.signup,name="signup"),
	path('login/',views.login,name="login")


]
