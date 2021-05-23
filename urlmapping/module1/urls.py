from django.urls import *
from . import views

var1=10
var2='abcd'

urlpatterns=[
    path('',views.module1view),
    path('register/',views.register),
    path('register/2020/',views.register20),
    path('registeryear/<int:year>/static/<str:uname>/<slug:sl>',views.registeryear),
    path('argument/',views.argument, {'v1':var1, 'v2':var2 }),

    re_path(r'^regex/(?P<revar>s-[0-9]{3})/$',views.regexhandle),

]
