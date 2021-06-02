from django.urls import *
from . import views

urlpatterns=[
	
    path('',views.homeview,name="homeview"),
    path('upload/', views.upload, name="upload"),
    path('show/', views.show, name="show"),
    path('addcomment/', views.addcomment, name="addcomment"),

    path('delete/',views.delete, name='delete'),
    path('deletel/',views.delete, name='deletelist'),
    path('update/<int:pid>/',views.update, name='update'),
    path('logout/',views.logout,name="logout")

    

]
