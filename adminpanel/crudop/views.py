from django.shortcuts import render
from . import myforms
from django.core.files.storage import FileSystemStorage
# importing database modules
from .dbmodels.product import Product
from .dbmodels.comment import Comment
from .dbmodels.productdao import ProductDAO
#JsonResponse
from django.http import *
# Create your views here.
def logout(request):
    del request.session['username']
    return render(request, 'login.html')
def homeview(request):
    dao=ProductDAO()
    prodlist=dao.showall()
    commlist=dao.showc()
    django_form=myforms.CForm()
    #for i in prodlist:
        #commlist.append(dao.showc(i.getId()))
    #commlist=dao.showc(pid)
    
    return render(request, 'home.html', {'f':django_form, 'data':prodlist, 'data1':commlist })
def upload(request):
    if request.method=="GET":
        django_form=myforms.UploadForm()
        return render(request, 'upload.html', {'f':django_form})
    elif request.method=="POST":
        django_form=myforms.UploadForm(request.POST, request.FILES)
        if django_form.is_valid():
            #receiving the cleaned data
            name=django_form.cleaned_data['name']
            writer=django_form.cleaned_data['writer']
            genre=django_form.cleaned_data['genre']
            rate=django_form.cleaned_data['rate']
            review=django_form.cleaned_data['review']
            
            image=django_form.cleaned_data['image']

            #uploading the file to media folder
            fs=FileSystemStorage()
            filename=fs.save(image.name,image)
            imageurl=fs.url(filename)

            p=Product(-1,name,writer,genre,rate,review,imageurl)
            dao=ProductDAO()
            try:
                dao.upload(p)

                #reinitializing django form
                django_form=myforms.UploadForm()
                return render(request, 'upload.html', {'f':django_form,'success':True})
            except:
                return render(request, 'upload.html', {'f':django_form,'success':False})
        else:
            return render(request, 'upload.html', {'f':django_form})

def show(request):
    dao=ProductDAO()
    prodlist=dao.showall() #list of product objects
    return render(request, 'show.html', {'data':prodlist})
def delete(request):
    if request.method=='POST':
        pid=request.POST['pid']
        dao=ProductDAO()
        try:
            p=dao.delete(pid)
            prodlist=dao.showall() #list of product objects
            return render(request, 'home.html', {'data':prodlist,'success':True})
        except:
            prodlist=dao.showall() #list of product objects
            return render(request,'home.html',{'data':prodlist,'success':False})
def deletelist(request):
    if request.method=='POST':
        pid=request.POST['pid']
        dao=ProductDAO()
        try:
            p=dao.delete(pid)
            prodlist=dao.showall() #list of product objects
            return render(request, 'home.html', {'data':prodlist,'success':True})
        except:
            prodlist=dao.showall() #list of product objects
            return render(request,'home.html',{'data':prodlist,'success':False})
def update(request,pid):
    if request.method=='GET':
        dao=ProductDAO()
        p=dao.findprod(pid)
        
        django_form=myforms.UpdateForm(initial={'pid':p.getId(), 'name':p.getName(), 'writer':p.getWriter(), 'genre':p.getGenre(), 'rate':p.getRate(),'review':p.getReview()})
        return render(request, 'update.html',{'f':django_form})
    elif request.method=='POST':
        django_form=myforms.UpdateForm(request.POST)
        print(django_form.is_valid())
        if django_form.is_valid():
            print("xxxx")

            pid=django_form.cleaned_data['pid']
            name=django_form.cleaned_data['name']
            writer=django_form.cleaned_data['writer']
            genre=django_form.cleaned_data['genre']
            rate=django_form.cleaned_data['rate']
            review=django_form.cleaned_data['review']
            p=Product(pid, name, writer, genre, rate, review,'')
            dao=ProductDAO()
            print("pppppp")
            try:
                dao.update(p)
                print("Vsdvf")
                return JsonResponse({'error': False, 'pid':pid,'name': name, 'writer':writer,'genre':genre,'rate':rate,'review':review})
            except:
                return JsonResponse({'error':True})
        else:
            return JsonResponse({'error':True})

def addcomment(request):
    if request.method=="GET":
        django_form=myforms.CForm()
        dao=ProductDAO()
        prodlist=dao.showall()
        commlist=dao.showc()

        return render(request, 'home.html', {'f':django_form, 'data':prodlist, 'data1':commlist })
    elif request.method=="POST":
        pid1=request.POST['pid1']
        dao=ProductDAO()
        prodlist=dao.showall() 
        commlist=dao.showc()


        django_form=myforms.CForm(request.POST)
        print(django_form.is_valid())
        if django_form.is_valid():
            
            #receiving the cleaned data
            content=django_form.cleaned_data['content']
            c=Comment(-1,pid1,content)
            print(content)
            


            try:
                
                dao.pcomment(c)

                #reinitializing django form
                django_form=myforms.CForm()
                commlist=dao.showc()
                return render(request, 'home.html', {'f':django_form,'data':prodlist,'data1':commlist})
            except:
                return render(request, 'home.html', {'f':django_form,'data':prodlist,'data1':commlist})
        else:
            return render(request, 'home.html', {'f':django_form,'data':prodlist,'data1':commlist})
