from flask import Flask
from flask_mysqldb import MySQL


app = Flask(__name__)


mysql = MySQL(app)


# Routes
@app.route("/")
def hello_world():
    return "<p>Hello, World!</p>"


if __name__ == "__main__":
    app.run(debug=True)