from flask import Flask, make_response, jsonify, request
from flask_mysqldb import MySQL
from datetime import datetime, timedelta, timezone

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

@app.route("/products", methods=["GET"])
def get_products():
    try:
        cur = mysql.connection.cursor()
        query = """SELECT * FROM posdb.product"""
        cur.execute(query)
        rows_affected = cur.rowcount
        if rows_affected == 0:
            return make_response(jsonify(
                {"error": "Product not Found"}),404)
        
        data = cur.fetchall()
        cur.close()

        return make_response(jsonify(data), 200)
    except Exception as e:
        return make_response(jsonify({"error": str(e)}), 500)


@app.route("/transactions", methods=["GET"])
def get_transaction():
    cur = mysql.connection.cursor()
    query = """SELECT * FROM posdb.transaction"""
    cur.execute(query)
    rows_affected = cur.rowcount
    if rows_affected == 0:
            return make_response(jsonify(
                {"error": "Transactions not Found"}),404)
    data = cur.fetchall()
    cur.close()

    return make_response(jsonify(data), 200)

@app.route("/product/edit/<int:id>", methods=["PUT"])
def update_product(id):
    cur = mysql.connection.cursor()
    info = request.get_json()
    price = info["price"]
    quantity = info["quantity"]
    try:
        query = """ UPDATE product SET price = %s, quantity = %s WHERE product_id = %s """
        values = (price, quantity, id)
        cur.execute(query,values)
        mysql.connection.commit()
        rows_affected = cur.rowcount
        cur.close()
        if rows_affected == 0:
            return make_response(jsonify(
                {"error": "Product not Found"}),404)
        
        return make_response(
            jsonify(
                {"message": "Product updated successfully",
                "rows_affected": rows_affected}
            ),200,
        )
    except Exception as e:
        return make_response(jsonify({"error": str(e)}), 500)


@app.route("/order", methods=["POST"])
def add_payment_transaction():
    
    info = request.get_json()

    method = info["method"]
    amount = info["amount"]

    staff_id = info["staff_id"]
    customer_id = info["costumer_id"]
    prod_id = info["product_id"]
    quantity = info["product_quantity"]

    cur = mysql.connection.cursor()
    # Create payment
    try:
        payment_query = """INSERT INTO payment (method, amount) VALUES (%s, %s)"""
        payment_values = (method, amount)
        cur.execute(payment_query, payment_values)
        rows_affected_payment = cur.rowcount

        payment_id = cur.lastrowid

        # Create transaction
        transaction_query = """
            INSERT INTO transaction (staff_id, costumer_id, product_id, payment_id, transaction_datetime, product_quantity) 
            VALUES (%s, %s, %s, %s, %s, %s)
        """
        transaction_values = (staff_id, customer_id, prod_id, payment_id, datetime.now(), quantity)
        cur.execute(transaction_query, transaction_values)
        rows_affected_transaction = cur.rowcount

        mysql.connection.commit()
        cur.close()

        return make_response(
            jsonify(
                {"message1": "Order added successfully", "rows_affected1": rows_affected_payment,
                "message2": "Transaction added successfully", "rows_affected2": rows_affected_transaction}
            ),201,
        )
    except Exception as e:
        return make_response(jsonify({"error": str(e)}), 500)

@app.route("/product/add", methods=["POST"])
def add_product():
    info = request.get_json()
    cur = mysql.connection.cursor()
    prod_name = info["product_name"]
    price = info["price"]
    quantity = info["quantity"]
    try:
        payment_query = """INSERT INTO product (product_name,price, quantity) VALUES (%s, %s, %s)"""
        payment_values = (prod_name, price, quantity)
        cur.execute(payment_query, payment_values)
        mysql.connection.commit()
        rows_affected = cur.rowcount
        cur.close()
        if rows_affected == 0:
            return make_response(
                jsonify(
                    {"error": "Product couldn't add"}),404)
        return make_response(
            jsonify(
                {"message": "Product added successfully", 
                 "rows_affected": rows_affected}),201)
    except Exception as e:
        return make_response(jsonify({"error": str(e)}), 500)

@app.route("/product/delete/<int:id>", methods=["DELETE"])
def delete_product(id):
    try:
        cur = mysql.connection.cursor()
        cur.execute(""" DELETE FROM product where product_id = %s """, (id,))
        mysql.connection.commit()
        rows_affected = cur.rowcount
        cur.close()
        if rows_affected == 0:
            return make_response(
            jsonify(
                {"error": "Product not Found"}),404)

        return make_response(
            jsonify(
                {"message": "Product deleted successfully", 
                 "rows_affected": rows_affected}
            ),
            200,)
    except Exception as e:
        return make_response(jsonify({"error": str(e)}), 500)

@app.errorhandler(404)
def page_not_found(e):
    data ={"error": str(e)}
    return make_response(jsonify(data), 404)

@app.errorhandler(500)
def page_not_found(e):
    data ={"error": str(e)}
    return make_response(jsonify(data), 500)

if __name__ == "__main__":
    app.run(debug=True)