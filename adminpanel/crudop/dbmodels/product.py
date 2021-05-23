#for each database table create one and define necessary get set methods
class Product:
    #constructor
    def __init__(self, id, name, writer, genre, rate, review, imgpath):
        self.__id=id
        self.__name=name
        self.__writer=writer
        self.__genre=genre
        self.__rate=rate
        self.__review=review
        
        self.__imgpath=imgpath

    def getId(self):
        return self.__id
    def setId(self, id):
        self.__id=id

    def getName(self):
        return self.__name
    def setName(self, name):
        self.__name=name

    def getWriter(self):
        return self.__writer
    def setWriter(self, writer):
        self.__writer=writer

    def getGenre(self):
        return self.__genre
    def setGenre(self, genre):
        self.__genre=genre

    def getRate(self):
        return self.__rate
    def setRate(self, rate):
        self.__rate=wrate

    def getReview(self):
        return self.__review
    def setReview(self, review):
        self.__review=review

    def getImgpath(self):
        return self.__imgpath
    def setImgpath(self, imgpath):
        self.__imgpath=imgpath
        
    