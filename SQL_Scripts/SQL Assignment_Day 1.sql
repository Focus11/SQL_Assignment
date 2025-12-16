---/* Create database */---
CREATE DATABASE test_db;

---/* USE database */---
USE test_db;

---/* Create table */---
CREATE TABLE sample_table(
id INT,
name VARCHAR(50)
);

---/*Show tables*/---
SHOW tables;

---/* Drop table */---
DROP TABLE sample_table;

---/* Create another table */---
CREATE TABLE students(
student_id INT PRIMARY KEY,
first_name VARCHAR(30),
last_name VARCHAR(30)
);

---/* Insert into table */---
INSERT INTO students(
student_id,
first_name,
last_name)
VALUES (1, 'John', 'Doe'), (2, 'Jane', 'Smith'), (3, 'Emily', 'Clark');

---/* Retrieve all data from the students table*/---
	SELECT *
    FROM students;
