---/* Create database */---
CREATE DATABASE sales_db;

---/* Use database */---
USE sales_db;

---/* Create table employees */---
CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(100),
    department VARCHAR(50)
);

---/*Insert into the employee table */---
INSERT INTO employees (employee_id, employee_name, department) VALUES
(1, 'Faith Balogun', 'Sales'),
(2, 'Jeff Anderson', 'Sales'),
(3, 'Myles Hendrich', 'Marketing'),
(4, 'Grace Lincoln', 'Sales'),
(5, 'Majid Michal', 'Finance'),
(6, 'Atuanya John', 'Sales'),
(7, 'Daniel Bolaji', 'HR'),
(8, 'Marcus Anderson', 'Sales'),
(9, 'Michael Ejoor', 'IT'),
(10, 'Philemon Taylor', 'Sales');

---/*Create the sales table */---
CREATE TABLE sales (
    salesperson_id INT,
    sales_person VARCHAR(100),
    amount DECIMAL(10,2),
    sale_date DATE,
    FOREIGN KEY (salesperson_id) REFERENCES employees(employee_id)
);

---/*Insert into the sales table */---
INSERT INTO sales (salesperson_id, sales_person, amount, sale_date) VALUES
(1, 'Abba Luka', 1200.50, '2024-01-02'),
(2, 'Chiamaka Leonard', 950.00, '2024-01-03'),
(4, 'Mark Javier', 1800.75, '2024-01-04'),
(6, 'John Martin', 1100.00, '2024-01-05'),
(8, 'Lucy Essien', 1450.25, '2024-01-06');

---/*calculate total sales per salesperson and show only those with sales exceeding $1000. */---
SELECT salesperson_id, SUM(amount) AS total_sales
FROM Sales
GROUP BY salesperson_id
HAVING total_sales > 1000;

---/* create a view of employees in the Engineering department. */---
CREATE VIEW Engineering_Employees AS
SELECT employee_name, department
FROM employees
WHERE department = "Engineering";




