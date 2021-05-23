from django.urls import *
from . import views

urlpatterns=[
	
    path('',views.loginview,name="loginview"),
    
    

]
