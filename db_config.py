import mysql.connector

mydb = mysql.connector.connect(
  host="localhost",
  user="root",
  password="",
  database="contact_chats"
)

db_cursor = mydb.cursor()