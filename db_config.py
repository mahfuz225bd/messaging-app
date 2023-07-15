import mysql.connector

mydb = mysql.connector.connect(
  host="localhost",
  user="root",
  password="",
  database="chat_app"
)

Error = mysql.connector.Error

db_cursor = mydb.cursor()