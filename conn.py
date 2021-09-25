#! D:\laragon\bin\python\python-3.6.1/python.exe
print("Content-Type: text/html")
print()

import cgi, cgitb
import mysql.connector
#import webbrowser

print ("<html>")
print ("<head>")
print ("<title>Python world</title>")
print ("</head>")
print ("<body>")
form = cgi.FieldStorage() 
name = form.getvalue("lsu_name")
email = form.getvalue("lsu_email")
password = form.getvalue("lsu_password")
print (name)
print (email)
print (password)
cnx = mysql.connector.connect(host="localhost", user="root", passwd="usbw", database="loginsystem")
if cnx:
    print("\r\n Register Successfully")
    mycursor = cnx.cursor()
    mycursor.execute("INSERT INTO ls_user (lsu_name, lsu_email, lsu_password) VALUES (%s, %s, %s)", (name, email, password))
    cnx.commit()
    print ("\r\n Record inserted successfully")    

print ('<a href="index.html">Login Here</a>')
print ("</body>")
print ("</html>")
#page =  urllib.urlopen('index.html').read()
#print (page)