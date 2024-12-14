from flask import Flask, make_response, jsonify, request
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
    return make_response(jsonify(
        {"body":"<p>Hello, World!</p>"}
    ), 200)

@app.route("/productlist", methods=["GET"])
def get_products():
    cur = mysql.connection.cursor()
    query = """SELECT * FROM posdb.product"""
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

@app.route("/product/<int:id>", methods=["PUT"])
def update_product(id):
    cur = mysql.connection.cursor()
    info = request.get_json()
    price = info["price"]
    quantity = info["quantity"]
    query = """ UPDATE product SET price = %s, quantity = %s WHERE product_id = %s """
    values = (price, quantity, id)
    cur.execute(query,values)
    mysql.connection.commit()
    rows_affected = cur.rowcount
    cur.close()
    return make_response(
        jsonify(
            {"message": "Product updated successfully",
            "rows_affected": rows_affected}
        ),
        200,
    )

@app.errorhandler(404)
def page_not_found(e):
    data ={"error": "Page Not Found"}
    return make_response(jsonify(data), 404)

@app.errorhandler(500)
def page_not_found(e):
    data ={"error": "Interal Server Error"}
    return make_response(jsonify(data), 500)

if __name__ == "__main__":
    app.run(debug=True)