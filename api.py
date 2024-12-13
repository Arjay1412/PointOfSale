from flask import Flask, make_response, jsonify
from flask_mysqldb import MySQL


app = Flask(__name__)

# Database Connection
app.config["MYSQL_USER"] = "root"
app.config["MYSQL_PASSWORD"] = "admin"
app.config["MYSQL_DB"] = "posdb"

app.config["MYSQL_CURSORCLASS"] = "DictCursor"

mysql = MySQL(app)


# Routes
@app.route("/")
def hello_world():
    return "<p>Hello, World!</p>"

@app.route("/products", methods=["GET"])
def get_products():
    cur = mysql.connection.cursor()
    query = """SELECT * FROM posdb.product"""
    cur.execute(query)

    data = cur.fetchall()
    cur.close()

    return data

@app.route("/products", methods=["GET"])
def get_products():
    cur = mysql.connection.cursor()
    query = """SELECT * FROM posdb.product"""
    cur.execute(query)

    data = cur.fetchall()
    cur.close()

    return data

if __name__ == "__main__":
    app.run(debug=True)