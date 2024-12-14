from unittest.mock import patch
from api import app
import pytest

# Flask mysldb Connection
@pytest.fixture
def mock_db(mocker):
    mock_conn = mocker.patch('flask_mysqldb.MySQL.connection')
    mock_cursor = mocker.MagicMock()
    mock_conn.cursor.return_value = mock_cursor
    return mock_cursor

# Flask Client
@pytest.fixture
def client():
    with app.test_client() as client:
        with app.app_context():
            yield client

def test_get_products(client, mock_db):
    mock_db.fetchall.return_value = [
        {
            "product_id": 1,
            "product_name": "Rice (5kg)",
            "price": 250.00,
            "quantity": 568,
        }
    ]
    response = client.get("/products")
    assert response.status_code == 200

def test_delete_product(client, mock_db):
    mock_db.rowcount = 1
    response = client.delete('/product/delete/3')
    assert response.status_code == 200
    assert b"Product deleted successfully" in response.data
    
def test_add_product(client, mock_db):
    mock_db.rowcount = 1  # Mock successful insertion
    response = client.post('/product/add',
        json={
            "product_name": "Alcohol",
            "price": 150.32,
            "quantity": 200
        },
    )
    assert response.status_code == 201
    assert b"Product added successfully" in response.data

def test_update_product(client, mock_db):
    mock_db.rowcount = 1
    response = client.put('/product/edit/1', 
        json={
            "product_name": "Rice",
            "price": 25.23,
            "quantity": 25,})
    assert response.status_code == 200
    assert b"Product updated successfully" in response.data

def test_get_transactions(client, mock_db):
    mock_db.fetchall.return_value = [
        {
            "transaction_id": 4,
            "staff_id": 1,
            "costumer_id": 1,
            "product_id": 1,
            "payment_id": 104,
            "transaction_datetime": "2020-01-11 21:16:26",
            "quantity": 91
        }
    ]
    response = client.get("/transactions")
    assert response.status_code == 200

def test_add_transaction_payment(client, mock_db):
    mock_db.rowcount = 1  # Mock successful insertion
    response = client.post('/order',
        json={
            "method": "Shees",
            "amount": 108.75,
            "staff_id": 1,
            "costumer_id": 1,
            "product_id": 2,
            "product_quantity": 6
},
    )
    assert response.status_code == 201
    assert b"Order added successfully" in response.data

