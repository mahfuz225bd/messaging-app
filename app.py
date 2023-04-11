from flask import Flask, render_template

app = Flask(__name__)


@app.route("/")
def index():
    usernames = ['Nick', 'Robert', 'Deondre', 'John Doe',
                 'Jane Doe', 'Mark Smith', 'Sarah Johnson']
    return render_template("index.html", usernames=usernames)


if __name__ == "__main__":
    app.run(debug=True)
