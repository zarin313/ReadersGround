class User:
        def __init__(self,name,uname,email,pas,confpas):
            self.name=name
            self.uname=uname
            self.email=email
            
            self.pas=pas
            self.confpas=confpas
        def getName(self):
            return self.name
        def setName(self,name):
            self.name=name

        def getUname(self):
            return self.uname
        def setUname(self,uname):
            self.uname=uname

        def getEmail(self):
            return self.email
        def setEmail(self,email):
            self.email=email

        def getPas(self):
            return self.pas
        def setPas(self,pas):
            self.pas=pas

        def getConfpas(self):
            return self.confpas
        def setPas(self,confpas):
            self.confpas=confpas
