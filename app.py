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


if __name__ == "__main__":
    app.run(debug=True)
