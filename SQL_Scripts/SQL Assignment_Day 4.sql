---/* Create employee database */---
CREATE DATABASE employee_db;

---/* Use employee database */---
USE employee_db;

---/* Create employee table */---
CREATE TABLE employees(
    employee_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100),
    salary INT,
    phone_number VARCHAR(20),
    state VARCHAR(50)
);

---/* Insert values into the employee table */---
INSERT INTO employees (name, email, salary, phone_number, state) 
VALUES ('Ayomide Fela', 'ayomide.fela@email.com', 32000, '08012345601', 'Lagos'),
('Mary Jatau', 'mary.jatau@email.com', 66000, '08012345602', 'Lagos'),
('Paul Ade', 'paul.ade@email.com', 40000, '08012345603', 'Oyo'),
('Blessing Okafor', 'blessing.okafor@email.com', 45000, '08012345604', 'Anambra'),
('David Musa', 'david.musa@email.com', 58000, '08012345605', 'Kaduna'),
('Sarah Ado', 'sarah.ado@email.com', 50000, '08012345606', 'Kwara'),
('Daniel Obi', 'daniel.obi@email.com', 30000, '08012345607', 'Imo'),
('Aisha Lawal', 'aisha.lawal@email.com', 47000, '08012345608', 'Ogun'),
('Michael Johnson', 'michael.johnson@email.com', 36000, '08012345609', 'Edo'),
('Esther Danjuma', 'esther.danjuma@email.com', 39000, '08012345610', 'Plateau'),
('Samuel Okoye', 'samuel.okoye@email.com', 41000, '08012345611', 'Delta'),
('Grace Williams', 'grace.williams@email.com', 58000, '08012345612', 'Lagos'),
('Ibrahim Sadiq', 'ibrahim.sadiq@email.com', 33000, '08012345613', 'Kano'),
('Victoria Brown', 'victoria.brown@email.com', 46000, '08012345614', 'Rivers'),
('Joseph Peter', 'joseph.peter@email.com', 37000, '08012345615', 'Benue'),
('Ruth Ajayi', 'ruth.ajayi@email.com', 34000, '08012345616', 'Osun'),
('Kelvin Uche', 'kelvin.uche@email.com', 49000, '08012345617', 'Abia'),
('Hauwa Mohammed', 'hauwa.mohammed@email.com', 43000, '08012345618', 'Niger'),
('Andrew Cole', 'andrew.cole@email.com', 31000, '08012345619', 'Ekiti'),
('Joy Adebayo', 'joy.adebayo@email.com', 36000, '08012345620', 'Ondo'),
('Peter Simon', 'peter.simon@email.com', 44000, '08012345621', 'Cross River'),
('Linda Green', 'linda.green@email.com', 47000, '08012345622', 'Lagos'),
('Emeka Nwoye', 'emeka.nwoye@email.com', 66000, '08012345623', 'Enugu'),
('Fatima Abdullahi', 'fatima.abdullahi@email.com', 32000, '08012345624', 'Sokoto'),
('Nathan Scott', 'nathan.scott@email.com', 50000, '08012345625', 'Abuja'),
('Peace Olu', 'peace.olu@email.com', 39000, '08012345626', 'Ogun'),
('Sadiya Umar', 'sadiya.umar@email.com', 34000, '08012345627', 'Zamfara'),
('Henry Adams', 'henry.adams@email.com', 46000, '08012345628', 'Lagos'),
('Chinedu Eze', 'chinedu.eze@email.com', 41000, '08012345629', 'Ebonyi'),
('Janet Thomas', 'janet.thomas@email.com', 38000, '08012345630', 'Bayelsa');

---/* Retrieve name,  email, phone_number and state, if state is Kaduna or Lagos and salary is above 50,000. */---
SELECT name, email, salary
FROM employees
WHERE (state = 'Kaduna' OR state = 'Lagos')
AND salary > 50000;

---/* Create orders and customers database */---
CREATE DATABASE customers_orders;

---/* Create table orders and customers database */---
CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(100) NOT NULL
);

CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    amount DECIMAL(7,2)
);

---/* Alter table by adding foreign keys */---
ALTER TABLE orders
ADD FOREIGN KEY (customer_id) REFERENCES customers(customer_id);

---/* Insert into the customers table */---
INSERT INTO customers (customer_id, customer_name) VALUES
(1, 'Abba Philemon'),
(2, 'Maryam Abdullahi'),
(3, 'Glory Laidun'),
(4, 'Abigail James'),
(5, 'Sarah Belmum'),
(6, 'Jaiye Olajuwon'),
(7, 'Daniel Wilson'),
(8, 'Grace Obi'),
(9, 'James Anderson'),
(10, 'Patrick Yahaya');

---/* Insert into the orders table */---
INSERT INTO orders (order_id, customer_id, order_date, amount) 
VALUES (1, 1, '2024-01-05', 150.00),
(2, 2, '2024-01-06', 320.50),
(3, 3, '2024-01-07', 220.75),
(4, 4, '2024-01-08', 500.00),
(5, 5, '2024-01-09', 180.25),
(6, 6, '2024-01-10', 410.00),
(7, 7, '2024-01-11', 95.50),
(8, 8, '2024-01-12', 275.00),
(9, 9, '2024-01-13', 360.75),
(10, 10, '2024-01-14', 145.00),
(11, 1, '2024-02-01', 220.00),
(12, 2, '2024-02-02', 310.00),
(13, 3, '2024-02-03', 405.50),
(14, 4, '2024-02-04', 130.75),
(15, 5, '2024-02-05', 290.00),
(16, 6, '2024-02-06', 510.25),
(17, 7, '2024-02-07', 175.00),
(18, 8, '2024-02-08', 260.00),
(19, 9, '2024-02-09', 390.00),
(20, 10, '2024-02-10', 205.50),
(21, 1, '2024-03-01', 480.00),
(22, 2, '2024-03-02', 150.00),
(23, 3, '2024-03-03', 340.75),
(24, 4, '2024-03-04', 210.00),
(25, 5, '2024-03-05', 395.25),
(26, 6, '2024-03-06', 180.00),
(27, 7, '2024-03-07', 260.50),
(28, 8, '2024-03-08', 415.00),
(29, 9, '2024-03-09', 305.00),
(30, 10, '2024-03-10', 225.75);

---/* Display all orders with customer names using an INNER JOIN and show all customers with or without orders using a LEFT JOIN */---
SELECT C.customer_name , O.order_date, O.amount
FROM customers AS C
INNER JOIN orders AS O ON C.customer_id = O.customer_id;

SELECT C.customer_name, O.order_date, O.amount
FROM customers AS C
LEFT JOIN orders AS O ON C.customer_id = O.customer_id;







