from selenium import webdriver
from webdriver_manager.chrome import ChromeDriverManager
from selenium.webdriver.common.keys import Keys
import time



def checksuccess():
	txtContent = driver.find_element_by_id('loginuname')
	txtContent1 = driver.find_element_by_id('loginpass')
	btn=driver.find_element_by_id('loginbtn')
	txtContent.send_keys('zaima6')
	txtContent1.send_keys('abcd1')
	btn.click()
	time.sleep(5)
	u = driver.current_url
	
	if u=="http://127.0.0.1:8000/crudop/":
		print("login Successfull")
	else:
		print("invalid email or password")
def checkfail():
	txtContent = driver.find_element_by_id('loginuname')
	txtContent1 = driver.find_element_by_id('loginpass')
	btn=driver.find_element_by_id('loginbtn')
	txtContent.send_keys('zaima6')
	txtContent1.send_keys('qwea')
	btn.click()
	u = driver.current_url

	if u=="http://127.0.0.1:8000/crudop/":
		print("login Successfull")
	else:
		print("invalid email or password")

print("checking with correct username and password")
driver = webdriver.Chrome(ChromeDriverManager().install())
driver.get("http://127.0.0.1:8000/readersground/")	
checksuccess()
driver.close()
print("checking with incorrect username and password")
driver = webdriver.Chrome(ChromeDriverManager().install())
driver.get("http://127.0.0.1:8000/readersground/")
checkfail()
