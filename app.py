from flask import Flask, render_template
from db_config import db_cursor

app = Flask(__name__)

@app.route("/")
def index():
    usernames = []
    
    db_cursor.execute("SELECT name FROM chat_users")

    users = db_cursor.fetchall()

    for username in users:
        usernames.append(username[0])

    return render_template("index.html", usernames=usernames)

@app.route("/login")
def login():
    return render_template("login.html")

@app.route("/<route_username>")
def userchat(route_username):
    usernames = []
    
    db_cursor.execute("SELECT name FROM chat_users")

    users = db_cursor.fetchall()

    for username in users:
        usernames.append(username[0])
        
    return render_template("index.html", usernames=usernames, current_username=route_username)


if __name__ == "__main__":
    app.run(debug=True)
