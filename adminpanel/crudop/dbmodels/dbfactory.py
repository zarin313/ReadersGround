from django.db import connection

#a singleton factory class to provide database cursors
class DBFactory:
    # static/class variable for this class
    # private variable
    __obj=None

    def __init__(self):
        if DBFactory.__obj==None:
            DBFactory.__obj=self
        else:
            raise Exception("You can't create another Singleton class")

    @staticmethod
    def getInstance():
        # Static method to fetch the current instance.
        if DBFactory.__obj == None:
            DBFactory()
        return DBFactory.__obj

    def getDBCursor(self):
        return connection.cursor()
