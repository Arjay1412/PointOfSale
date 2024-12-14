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

Set these directly in the code:
`app.config["MYSQL_HOST"] = "localhost"`
`app.config["MYSQL_USER"] = "root"`
`app.config["MYSQL_PASSWORD"] = "admin"`
`app.config["MYSQL_DB"] = "posdb"`

## API Endpoints

| Endpoint              | Method | Description              |
| --------------------- | ------ | ------------------------ |
| /transactions         | GET    | List of all transactions |
| /products             | GET    | List of all products     |
| /product/add          | POST   | Create a new product     |
| /products/update/<id> | PUT    | Update a product by ID   |
| /products/delete/<id> | DELETE | Delete a product by ID   |
| /order                | POST   | Create a new order       |

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
