---/* Create a databse */---
CREATE DATABASE products_db;

---/* Use a databse */---
USE products_db;

---/* Create a products table */---
CREATE TABLE products (
    product_id INT PRIMARY KEY,
    goods_name VARCHAR(100),
    price DECIMAL,
    quantity INT
);

---/* Insert into the products table */---
INSERT INTO products (product_id, goods_name, price, quantity)
VALUES
(1, 'A 25kg Rice Bag', 200.00, 25),
(2, 'Pack of Candle', 350.00, 40),
(3, 'Sugar', 500.00, 60),
(4, 'Wheat Flour', 650.00, 30),
(5, 'Milk Powder', 800.00, 45),
(6, 'Salt 5kg Bag', 250.00, 70),
(7, 'Tomato Paste Carton', 900.00, 20),
(8, 'Laundry Detergent 3kg', 1200.00, 35),
(9, 'Toothpaste Family Pack', 700.00, 55),
(10, 'Bathing Soap Pack', 600.00, 80),
(11, 'Bottled Water Carton', 1000.00, 50),
(12, 'Soft Drinks Crate', 1100.00, 42),
(13, 'Bread Loaf', 300.00, 90),
(14, 'Eggs Crate', 1500.00, 28),
(15, 'Frozen Chicken', 2000.00, 18),
(16, 'Frozen Fish Pack', 1800.00, 22),
(17, 'Vegetable Oil 1L', 450.00, 65),
(18, 'Instant Noodles Carton', 1600.00, 33),
(19, 'Tea Bags Pack', 750.00, 48),
(20, 'Coffee Tin', 1300.00, 26),
(21, 'Corn Flakes 1kg', 1700.00, 31),
(22, 'Spaghetti Pack', 400.00, 75),
(23, 'Groundnut Oil 2L', 2200.00, 19),
(24, 'Cereal Oats Pack', 1900.00, 27),
(25, 'Baby Diapers Large', 3000.00, 15),
(26, 'Toilet Tissue Pack', 950.00, 58),
(27, 'Hand Sanitizer 500ml', 650.00, 44),
(28, 'Liquid Soap 2L', 1400.00, 29),
(29, 'Mosquito Repellent', 1200.00, 37),
(30, 'Disinfectant Cleaner', 1600.00, 24),
(31, 'Electric Kettle', 3500.00, 12),
(32, 'Standing Fan', 5000.00, 8),
(33, 'Extension Socket', 1800.00, 21),
(34, 'LED Bulb Pack', 900.00, 46),
(35, 'Phone Charger', 2500.00, 17),
(36, 'Power Bank', 4200.00, 14),
(37, 'Bluetooth Speaker', 4800.00, 10),
(38, 'Wireless Earbuds', 3900.00, 16),
(39, 'Electric Iron', 4400.00, 11),
(40, 'Rice Cooker', 4600.00, 9),
(41, 'Notebook Pack', 550.00, 85),
(42, 'Ballpoint Pens Box', 700.00, 73),
(43, 'Printer Paper Ream', 2000.00, 20),
(44, 'School Backpack', 3200.00, 18),
(45, 'Office Chair', 5000.00, 6),
(46, 'Laptop Mouse', 1500.00, 34),
(47, 'USB Flash Drive 32GB', 2700.00, 25),
(48, 'External Hard Drive 1TB', 4900.00, 7),
(49, 'Wall Clock', 1100.00, 39),
(50, 'Calculator Scientific', 2800.00, 22);

---/* Create a products table that has prices column,
 retrieve products with prices above 2000 and apply an 8% discount to the products*/---
 SELECT goods_name, price, price * 0.9 AS discounted_price
FROM products
WHERE price > 20;

---/* Create the employee table */---
CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(100),
    department VARCHAR(50),
    hire_date DATE
);

---/* Insert into the employee table */---
INSERT INTO employees (employee_id, employee_name, department, hire_date)
VALUES
(1, 'Felicia Badmus', 'Sales', '2019-03-15'),
(2, 'Larry Allen', 'HR', '2020-06-01'),
(3, 'Judy Michael', 'IT', '2018-11-20'),
(4, 'Hafsat Bello', 'Sales', '2021-01-10'),
(5, 'David Alor', 'Finance', '2017-09-05'),
(6, 'Sarah Richard', 'Marketing', '2022-07-18'),
(7, 'Joseph Abel', 'Finance', '2024-08-20'),
(8, 'Favour Adams', 'Sales', '2025-07-18'),
(9, 'Shade Fini', 'IT', '2022-07-18'),
(10, 'Herbert Macaulay', 'Marketing', '2022-07-18');

---/*  Query for employee_name, department and hire_date from the “Sales” department order by hire_dates */---
SELECT employee_name, department, hire_date
FROM Employees
WHERE department = 'Sales'
ORDER BY hire_date;


