#for each database table create one and define necessary get set methods
class Comment:
    #constructor
    def __init__(self, id, pid, content, user):
        self.__id=id
        self.__pid=pid
        self.__content=content
        self.__user=user
        
    def getId(self):
        return self.__id
    def setId(self, id):
        self.__id=id
    def getPId(self):
        return self.__id
    def setPId(self, id):
        self.__id=id

    def getContent(self):
        return self.__name
    def setContent(self, name):
        self.__name=name

    def getUser(self):
        return self.__writer
    def setUser(self, writer):
        self.__writer=writer
