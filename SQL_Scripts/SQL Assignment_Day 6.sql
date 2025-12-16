---/* Create database */---
CREATE DATABASE logical_model;

---/* Use database */---
USE logical_model;

---/* Create table customers */---
CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(100),
    email VARCHAR(100),
    phone VARCHAR(20),
    created_at DATE
);

---/* Create table products */---
CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    price DECIMAL(10,2),
    stock_quantity INT
);

---/* Create table Order */---
CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date TIMESTAMP,
    order_status VARCHAR(50),
    total_amount DECIMAL(10,2)
);

---/* Alter Orders table */---
ALTER TABLE Orders
ADD FOREIGN KEY (customer_id) REFERENCES Customers(customer_id);   

---/* Create table Order_Items */---
CREATE TABLE Order_Items (
    order_item_id INT PRIMARY KEY,
    order_id INT,
    product_id INT,
    quantity INT,
    unit_price DECIMAL(10,2)
);

---/* Alter Order_Items table */---
ALTER TABLE Order_Items
ADD FOREIGN KEY (order_id) REFERENCES Orders(order_id), 
ADD FOREIGN KEY (product_id) REFERENCES Products(product_id);  



