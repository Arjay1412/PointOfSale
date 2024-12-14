# Point of Sale API

## Description

This project is a Flask-based API Point of Sale managing customers, products, transactions, and payment.

## Installation

```cmd
pip install -r requirements.txt
```

## Configuration

Set up the database:

1. Create a MySQL database called POSdb.
2. Update the database details in the Flask app.

In MySQL terminal in pythonanywhere execute this command
```cmd
mysql> source myenv/MyFile/POSdb.sql
```

Set these directly in the code:
```cmd
app.config["MYSQL_HOST"] = "YourPOS.mysql.pythonanywhere-services.com"
app.config["MYSQL_USER"] = "YourPOS"
app.config["MYSQL_PASSWORD"] = "admin"
app.config["MYSQL_DB"] = "YourPOS$default"
```

## API Endpoints

| Endpoint                    | Method | Description              |
| --------------------------- | ------ | ------------------------ |
| /transactions               | GET    | List of all transactions |
| /products                   | GET    | List of all products     |
| /product/add                | POST   | Create a new product     |
| /products/update/&lt;id&gt; | PUT    | Update a product by ID   |
| /products/delete/&lt;id&gt; | DELETE | Delete a product by ID   |
| /order                      | POST   | Create a new order       |

## Testing

Instructions for running tests:

```cmd
pytest test_api.py
```

## Git Commit Guidelines

Use conventional commits:

```bash
feat: add user authentication
fix: resolve database connection issue
docs: update API documentation
test: add user registration tests
```
