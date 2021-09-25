#! D:\laragon\bin\python\python-3.6.1/python.exe
print("Content-Type: text/html")
print()

import cgi, cgitb
import mysql.connector

print ("<html>")
print ("<head>")
print ("<title>Python world</title>")
print ("</head>")
print ("<body>")
form = cgi.FieldStorage() 
name = form.getvalue("lsu_name")
email = form.getvalue("lsu_email")
password = form.getvalue("lsu_password")

cnx = mysql.connector.connect(host="localhost", user="root", passwd="usbw", database="loginsystem")
if cnx:
    print("Successfully")
    mycursor = cnx.cursor()
    mycursor.execute("SELECT * from ls_user")
    records = mycursor.fetchall()
    for row in records:
       print("Name = ", row[1])
       print("Email  = ", row[2])
       print("Password  = ", row[3], '\n')
    cnx.commit()

print ("</body>")
print ("</html>")
