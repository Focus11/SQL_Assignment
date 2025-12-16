---/* Create database */---
CREATE DATABASE school_db;

---/* Use database */---
USE school_db;

---/* Create multiple tables */---
CREATE TABLE students(
student_id INT PRIMARY KEY,
first_name VARCHAR(30),
last_name VARCHAR(30),
birth_date DATE
);

CREATE TABLE courses(
course_id INT PRIMARY KEY,
course_name VARCHAR(100),
credits INT
);

CREATE TABLE enrollments(
enrollment_id INT PRIMARY KEY,
student_id INT,
course_id INT,
FOREIGN KEY (student_id) REFERENCES students(student_id),
FOREIGN KEY (course_id) REFERENCES courses(course_id)
);

---/* Add email to the students table */---
ALTER TABLE students
ADD email VARCHAR(100);

---/* Insert values into the tables */---
INSERT INTO students (student_id, first_name, last_name, birth_date, email)
VALUES (1, 'Alice', 'Brown', '2001-07-21', 'alice@example.com');

INSERT INTO courses (course_id, course_name, credits)
VALUES (101, 'Mathematics', 3), (102, 'History', 2);

INSERT INTO enrollments (enrollment_id, student_id, course_id)
VALUES (1, 1, 101);


