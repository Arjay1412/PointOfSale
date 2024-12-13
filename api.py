from flask import Flask, make_response, jsonify
from flask_mysqldb import MySQL


app = Flask(__name__)

# Database Connection
app.config["MYSQL_HOST"] = "localhost"
app.config["MYSQL_USER"] = "root"
app.config["MYSQL_PASSWORD"] = "admin"
app.config["MYSQL_DB"] = "posdb"

app.config["MYSQL_CURSORCLASS"] = "DictCursor"

mysql = MySQL(app)


# Routes
@app.route("/")
def hello_world():
    return "<p>Hello, World!</p>"

@app.route("/stafflist", methods=["GET"])
def get_stafs():
    cur = mysql.connection.cursor()
    query = """SELECT * FROM posdb.staff"""
    cur.execute(query)

    data = cur.fetchall()
    cur.close()

    return make_response(jsonify(data), 200)

@app.route("/transactionlist", methods=["GET"])
def get_transaction():
    cur = mysql.connection.cursor()
    query = """SELECT * FROM posdb.transaction"""
    cur.execute(query)

    data = cur.fetchall()
    cur.close()

    return make_response(jsonify(data), 200)

if __name__ == "__main__":
    app.run(debug=True)