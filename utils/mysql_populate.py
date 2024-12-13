from faker import Faker
import mysql.connector
import random
from datetime import datetime


faker = Faker("en_PH")
db = mysql.connector.connect(host="127.0.0.1",
                            user="root", 
                            passwd="admin", 
                            database="posdb",
                            use_pure=True)

# Check if the connection was successful
if db.is_connected():
    print("Connection to MySQL DB successful")
else:
    print("Connection failed")
cursor = db.cursor()

# Customer Table
def create_costumer_staff(num):
    tables = ["costumer", "staff"]
    for table in tables:
        for _ in range(num):
            name = faker.name()
            address = faker.address()
            phone = f'09{faker.random_number(digits=9, fix_len=True)}'
            query = f"INSERT INTO {table} (name, address, contact) VALUES ( %s , %s , %s )"
            values = (name, address, phone)
            cursor.execute(query,values)
        print(f"{table} records inserted successfully!")
    db.commit()

# Products Table
def create_products():
    product_list = [
                    "Bottled Water (1L)","Coffee (100g)","Cooking Oil (1L)",
                    "Sugar (1kg)","Eggs (Dozen)","Milk (1L)","Butter (225g)",
                    "Cheese (200g)","Chocolate Bar","Canned Tuna","Hotdogs (1kg)",
                    "Pork Chops (1kg)","Chicken (1kg)","Beef (1kg)","Fresh Fish (1kg)",
                    "Ice Cream (Tub)","Fruit Juice (1L)",
                    "Dishwashing Liquid (500mL)","Laundry Detergent (1kg)",
                    "Fabric Conditioner (500mL","Toilet Paper (4 Rolls)","Shampoo (200mL)",
                    "Toothpaste (100g)","Soap Bar","Disinfectant Spray (350mL)",
                    "Trash Bags (10 Pieces)","Cleaning Sponge (Pack)"]
    price_list = [20.00,75.00,180.00,70.00,80.00,60.00,150.00,120.00,
                  50.00,35.00,200.00,320.00,200.00,400.00,280.00,350.00,100.00,90.00,120.00,85.00,50.00,140.00,70.00,
                  35.00,200.00,75.00,50.00 ]
    
    for i in range(len(product_list)):
        name = product_list[i]
        price = price_list[i]
        quantity = faker.random_number(digits=3)
        query = f"INSERT INTO product (product_name, price, quantity) VALUES ( %s , %s , %s )"
        values = (name, price, quantity)
        cursor.execute(query,values)
    print(f"product records inserted successfully!")
    db.commit()

# Payments Table
def create_payments(num):
    payment_list = ["Cash","Card","Online"]
    for i in range(num):
        query = f"INSERT INTO payment (method, amount) VALUES ( %s , %s )"
        values = (random.choice(payment_list), float(f"{faker.random_number(digits=3,fix_len=False)}.{faker.random_int(0,99)}"))
        cursor.execute(query,values)
    print(f"payment records inserted successfully!")
    db.commit()
    
# Transaction Table
def create_transactions():

    start_date = datetime(2020, 1, 1)  # Start date
    end_date = datetime(2024, 12, 14)  # End date

    # Convert dates to timestamps
    start_timestamp = start_date.timestamp()
    end_timestamp = end_date.timestamp()
    
    for i in range(30):
        random_timestamp = random.uniform(start_timestamp, end_timestamp)   # Generate a random timestamp
        random_date = datetime.fromtimestamp(random_timestamp)              # Convert the random timestamp to a datetime object
        transac_datetime = random_date.strftime('%Y-%m-%d %H:%M:%S')
        quantity = faker.random_int(0,100)
        query = f"INSERT INTO transaction (staff_id, costumer_id,product_id,payment_id,transaction_datetime,product_quantity) VALUES ( %s , %s , %s, %s , %s , %s )"
        values = (i+1,i+1,i+1,i+1,transac_datetime,quantity)
        cursor.execute(query,values)
    print(f"transaction records inserted successfully!")
    db.commit()

create_costumer_staff(50)
create_products()
create_payments(50)
create_transactions()

cursor.close()
db.close()
