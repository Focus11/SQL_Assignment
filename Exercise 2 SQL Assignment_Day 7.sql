---/* Created a database*/---
CREATE DATABASE load_db;

---/* Use the database*/---
USE load_db;

---/* Create table customers*/---
CREATE TABLE customers(
customer_id int DEFAULT NULL,
gender text,
age int DEFAULT NULL,
annual_income int DEFAULT NULL,
spending_score int DEFAULT NULL);

DROP TABLE customers;

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/customers(1).csv'
INTO TABLE Customers
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

SET GLOBAL local_infile = 1;

SHOW VARIABLES LIKE 'secure_file_priv';
  
  

