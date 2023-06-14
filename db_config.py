import mysql.connector

mydb = mysql.connector.connect(
  host="localhost",
  user="root",
  password="",
  database="chat_app"
)

db_cursor = mydb.cursor()