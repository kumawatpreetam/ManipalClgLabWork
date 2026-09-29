CREATE DATABASE preetam;
SHOW DATABASES;
USE preetam;
/*DDL CMD 
CREATE
ALTER
DROP
TRUNCATE
RENAME
*/

CREATE TABLE student (
    RegNumb INT PRIMARY KEY,
    name VARCHAR(50),
    email VARCHAR(50),
    age INT
);

ALTER TABLE student
MODIFY RegNumb BIGINT;

INSERT INTO student (RegNumb,name,email,age) 
VALUES 
(2602030124,"PreetamKumawat","preetam@gmail.com",20),
(2602030125,"DakshKumawat","daksh@gmail.com",19),
(2602030126,"SurajKumawat","suraj.com",18); 

SHOW TABLES;

SELECT * FROM student;

ALTER TABLE student 
RENAME COLUMN Regnumb TO Regnum;

ALTER TABLE student 
ADD COLUMN phone VARCHAR(50);

INSERT INTO student(Regnum,phone) VALUES
(2602030124,"0123456789"),
(2602030125,"8888888888"),
(2602030126,"2125897535");

-- **** Tue Sep,29 ***** 
CREATE TABLE employees(
employee_id INT NOT NULL UNIQUE PRIMARY KEY,
name VARCHAR(50),
age INT,
department VARCHAR(50),
salary INT,
city VARCHAR(20),
hire_date DATE
);

INSERT INTO employees(employee_id, name, age, department, salary, city, hire_date) VALUES
(1, 'James Smith', 27, 'Finance', 43873, 'London', '2021-10-15'),
(2, 'Oliver Jones', 40, 'HR', 60211, 'Tokyo', '2023-08-05'),
(3, 'William Taylor', 37, 'IT', 70126, 'New York City', '2021-06-29'),
(4, 'George Brown', 60, 'Marketing', 109696, 'Paris', '2020-11-21'),
(5, 'Henry Wilson', 49, 'Operations', 80766, 'Sydney', '2026-07-26'),
(6, 'Emma Davies', 60, 'HR', 61781, 'Mumbai', '2019-04-26'),
(7, 'Charlotte Evans', 58, 'Sales', 44955, 'Cairo', '2019-08-28'),
(8, 'Amelia Thomas', 46, 'Legal', 108253, 'Rio de Janeiro', '2023-05-26'),
(9, 'Sophia Roberts', 57, 'Finance', 112030, 'Cape Town', '2022-03-13'),
(10, 'Mia Johnson', 52, 'IT', 87971, 'Toronto', '2023-04-05');


DESCRIBE employees; -- Used to show the data of table easily 

-- 01. Write a query to display all columns and all records from the employees table. 

SELECT * 
FROM employees; 

-- 02. Display only the name, department, and salary of all employees.
SELECT 
name,
department,
salary
FROM employees;

-- 03. Find all employees whose salary is greater than 50,000.
SELECT * 
FROM employees
WHERE salary > 50000;

-- 04. Find all employees who work in the IT department.
SELECT *
FROM employees
WHERE department = "IT";

-- 05. Find employees whose age is between 25 and 35.

/*
AND / OR
Find employees who work in the IT department and have a salary greater than 60,000.

ORDER BY
Display all employees sorted by salary from highest to lowest.

LIMIT
Display the 5 employees with the highest salaries.

DISTINCT
Display all unique departments from the employees table.

LIKE
Find all employees whose name starts with the letter A.
*/







