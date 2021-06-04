from django import forms


class UploadForm(forms.Form):
    name = forms.CharField()
    writer = forms.CharField()
    genre = forms.CharField()
    rate = forms.CharField()
    review = forms.CharField()

    image = forms.FileField()


class UpdateForm(forms.Form):
    pid = forms.IntegerField(widget=forms.TextInput)
    name = forms.CharField()
    writer = forms.CharField()
    genre = forms.CharField()
    rate = forms.CharField()
    review = forms.CharField()


class CForm(forms.Form):
    content = forms.CharField()
