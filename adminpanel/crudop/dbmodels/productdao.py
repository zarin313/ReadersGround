from .dbfactory import DBFactory
from .product import Product
from .comment import Comment
class ProductDAO:

    def getDBCursor(self):
        c=DBFactory.getInstance().getDBCursor()
        return c

    def upload(self, p):
        dbcursor=self.getDBCursor()
        try:
            dbcursor.execute("INSERT INTO product VALUES('',%s,%s,%s,%s,%s,SYSDATE(),%s)", [p.getName(),p.getWriter(),p.getGenre(),p.getRate(),p.getReview(),p.getImgpath()])
        except:
            raise Exception('data insertion error')
        finally:
            dbcursor.close()
    def showall(self):
        dbcursor=self.getDBCursor()
        try:
            dbcursor.execute("SELECT * FROM product order by upldate desc")
            result=dbcursor.fetchall()
            productlist=[]
            
            for row in result:
                prod=Product(row[0],row[1],row[2],row[3],row[4],row[5],row[7])
                productlist.append(prod)
            return productlist
        except:
            raise Exception('data insertion error')
        finally:
            dbcursor.close()
    def delete(self, pid):
        dbcursor=self.getDBCursor()
        try:
            dbcursor.execute("DELETE FROM product WHERE id=%s", [pid])
        except:
            raise Exception('data insertion error')
        finally:
            dbcursor.close()
    def findprod(self, id):
        dbcursor=self.getDBCursor()
        try:
            dbcursor.execute("SELECT * FROM product WHERE id=%s",[id])
            item=dbcursor.fetchall()[0]

            prodobj=Product(item[0],item[1],item[2],item[3],item[4],item[5],item[7])
            return prodobj
        except:
            raise Exception('data insertion error')
        finally:
            dbcursor.close()
    def update(self, p):
        dbcursor=self.getDBCursor()
        try:
            print("fhfjgfg")
            dbcursor.execute("UPDATE product SET uname=%s, writer=%s, genre=%s, rate=%s, review=%s  WHERE id=%s", [p.getName(),p.getWriter(),p.getGenre(),p.getRate(),p.getReview(),p.getId()])
            print("orr")
        except:
            raise Exception('data insertion error')
        finally:
            dbcursor.close()

    def pcomment(self, c):
        dbcursor=self.getDBCursor()
        
        try:

            dbcursor.execute("INSERT INTO comment VALUES ('',%s,%s,%s)", [c.getPId(),c.getContent(),c.getContent()])
        except:
            raise Exception('data insertion error')
        finally:
            dbcursor.close()

    def showc(self):
        dbcursor1=self.getDBCursor()
        try:
            print(id)
            dbcursor1.execute("SELECT * FROM comment ")
            print("mkoiuyt")
            result1=dbcursor1.fetchall()
            commlist=[]
            
            for row in result1:
                comment=Comment(row[0],row[1],row[2])
                commlist.append(comment)
            return commlist
        except:
            raise Exception('database error')
        finally:
            dbcursor1.close()