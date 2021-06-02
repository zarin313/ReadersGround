#for each database table create one and define necessary get set methods
class Comment:
    #constructor
    def __init__(self, id, pid, content,user):
        self.__id=id
        self.__pid=pid
        self.__content=content
        self.__user=user
        
    def getId(self):
        return self.__id
    def setId(self, id):
        self.__id=id

    def getPId(self):
        return self.__pid
    def setPId(self, id):
        self.__pid=pid

    def getContent(self):
        return self.__content
    def setContent(self, content):
        self.__content=content

    def getuser(self):
        return self.__user
    def setuser(self, user):
        self.__user=user

    #def getUser(self):
     #   return self.__user
    
