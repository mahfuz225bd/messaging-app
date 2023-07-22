from flask import Flask, render_template, request, session, redirect
from flask_session import Session
from db_config import db_cursor, mydb, Error

app = Flask(__name__)
app.config["SESSION_PERMANENT"] = False
app.config["SESSION_TYPE"] = "filesystem"
Session(app)

def insert_user(username):
    try:
        db_cursor.execute("INSERT INTO `chat_users`(`username`) VALUES (%s)", (username,))
        mydb.commit()
    except Error as err:
        return "[ERROR] ", err, "occured while inserting new anonymous/guest user into database."
    
def find_user(username, password):
    db_cursor.execute("SELECT user_id, uuid, username, active FROM `chat_users` WHERE username=%s AND password=MD5(%s)", (username, password))
    user = db_cursor.fetchone()

    return user

def mark_user_active(username, active=True):
    active_value = bool(active)
    
    try:
        db_cursor.execute(f"UPDATE `chat_users` SET `active`={active_value} WHERE  `username`='{username}'")
        mydb.commit()

        return db_cursor.rowcount != 0
    except Error as err:
        return "[ERROR] ", err, "occured while inserting new anonymous/guest user into database." 


@app.route("/")
def index():
    logged_in = False

    try:
        logged_in = bool(session['logged_in'])
    except:
        logged_in = False
    
    if logged_in:
        usernames = []

        username_from_session = session['username']
        db_cursor.execute(f"SELECT name FROM chat_users WHERE username <> '{username_from_session}'")

        users = db_cursor.fetchall()

        for username in users:
            usernames.append(username[0])

        return redirect("/" + usernames[0])
    
    return redirect("/login")
    
@app.route("/<route_username>")
def userchat(route_username):
    logged_in = session['logged_in']

    if logged_in:
        usernames = []
        
        username_from_session = session['username']
        db_cursor.execute(f"SELECT name FROM chat_users WHERE username <> '{username_from_session}'")

        users = db_cursor.fetchall()

        for username in users:
            usernames.append(username[0])

        if route_username not in usernames:
            return f'<script>window.location.href = "/"; alert("Usern{route_username} not found.");</script>'
        return render_template("index.html", usernames=usernames, current_username=route_username)
    
    return redirect("/login")

@app.route("/login")
def login():
    if session['logged_in']:
        return redirect('/')
    
    return render_template("login.html")

@app.route("/login_action", methods=['POST', 'GET'])
def login_action():
    if request.method == "POST":
        username = request.form.get('username')
        password = request.form.get('password')

        found_user_by_form_value = bool(find_user(username, password))
        if found_user_by_form_value:
            # Creating sessions
            session['logged_in'] = True
            session['username'] = username
        
        username_from_session = session['username'] if session['username'] else ''
        user_by_session_value = find_user(username_from_session, password)

        found_user_by_session_value = bool(user_by_session_value)
        if found_user_by_session_value:
            mark_user_active(username_from_session, True)        
            return redirect("/")
        return '<script>window.location.href = "/"; alert("Wrong username or password");</script>'
        

@app.route("/logout")
def logout():
    username_from_session = session['username']

    # Updating user information as inactive to the database
    mark_user_active(username_from_session, False)

    # Reset session values
    session['logged_in'] = False
    session['username'] = None
    
    return redirect('/login')

if __name__ == "__main__":
    app.run(debug=True)
