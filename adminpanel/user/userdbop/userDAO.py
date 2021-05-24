from django.db import connection
from . import user
from . import dbfactory

#for password hash
from django.contrib.auth.hashers import *

class UserDAO:

    def getCursor(self):

        return dbfactory.DBFactory.getInstance().getDBCursor()





    def sameuname(self,u):
        c=self.getCursor()
        #print("daggadg")
        # print(u.getPas())
        # print(u.getConfpas())
        c.execute("SELECT uname FROM user")
        result=c.fetchall()
        print(result)
        same=0
        for i in result:
            print(i)
            print(u.getUname())
            if (u.getUname()==(i)):
                print(i)
                #print(u.getUname())
                return True
        return False

    def insertUser(self, u):

        c=self.getCursor()
       
        # print(u.getPas())
        # print(u.getConfpas())


        try:
            if u.getPas()==u.getConfpas():

                c.execute("INSERT INTO user VALUES(%s,%s,%s,%s,0)",[u.getUname(),u.getName(),u.getEmail(),make_password(u.getPas())]) #security SQL injection block
                print("daggadg")
                return True

        except:
            return False
        finally:
            c.close()
    def authenticate_user(self, u):

        c=self.getCursor()
        try:

            c.execute("SELECT password FROM user WHERE uname=%s",[u.getUname()])
             #security SQL injection block
            ret=c.fetchall() #list of tuple
            if len(ret)==1:
                print("yes")
                row=ret[0]

                auth=check_password(u.getPas(), row[0])

                if auth is True:

                    return True
                else:

                    return False
            else:
                return False
        except:
            return False
        finally:
            c.close()
