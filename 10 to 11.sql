-- DDL (data defination language)

-- create a table
CREATE TABLE students (
student_id INT,
name VARCHAR(20),
joining_date DATE,
course VARCHAR(10)
);

CREATE TABLE employees (
employee_id INT,
name VARCHAR(20),
department VARCHAR(20),
joining_date DATE,
salary INT
);

-- add new column
ALTER TABLE employees
ADD column experience INT

-- modify table
ALTER TABLE employees
ALTER COLUMN employee_id TYPE VARCHAR(20)

-- rename a column
ALTER TABLE employees
RENAME name TO employee_name


-- select a table
SELECT * FROM employees


-- delete a column
ALTER TABLE employees
DROP COLUMN department


-- drop table
DROP TABLE employees




-- dml (data manipulation language)

-- insert (insert data into table)
INSERT INTO employees (employee_id, name, department, joining_date, salary) VALUES
(101, 'Saumya', 'HR', '31/03/2025', 32000),
(102, 'Akash', 'IT', '28/02/2025', 45000);


-- update (update specific data into table)
UPDATE employees
SET department = 'IT'
WHERE employee_id = 101


-- delete (delete specific data into table)
DELETE FROM employees
WHERE employee_id = 101


-- truncate (remove all rows from the table)
TRUNCATE employees


-- DQL (Data Query Language)


INSERT INTO employees(employee_id, name, department, joining_date, salary)
VALUES
(101, 'saumya', 'hr', '2025-03-31', 32000),
(102, 'akaash', 'it', '2025-02-28', 45000),
(103, 'rahul', 'finance', '2024-11-15', 52000),
(104, 'priya', 'marketing', '2025-01-10', 38000),
(105, 'karan', 'it', '2024-08-22', 48000),
(106, 'neha', 'hr', '2025-04-05', 35000),
(107, 'aman', 'sales', '2024-12-18', 41000),
(108, 'simran', 'finance', '2025-02-12', 55000),
(109, 'rohit', 'it', '2025-05-20', 60000),
(110, 'tanya', 'marketing', '2024-10-07', 42000),
(111, 'mohit', 'sales', '2025-03-14', 37000),
(112, 'isha', 'hr', '2024-09-25', 33000),
(113, 'arjun', 'finance', '2025-01-28', 58000),
(114, 'riya', 'it', '2024-07-19', 51000),
(115, 'varun', 'sales', '2025-04-17', 39000);


-- select specific column
SELECT name, department FROM employees


-- WHERE Clause
SELECT * FROM employees
WHERE salary > 50000 AND department = 'it'


SELECT * FROM employees
WHERE salary > 50000 OR department = 'it'


SELECT * FROM employees
WHERE salary BETWEEN 40000 AND 50000


SELECT * FROM employees
WHERE department IN ('it', 'finance')


SELECT * FROM employees
WHERE name LIKE 'a%' -- startswith


SELECT * FROM employees
WHERE name LIKE '%a' -- ends with


SELECT * FROM employees
WHERE name LIKE '%an%' -- contain


-- order by
SELECT * FROM employees
ORDER BY salary ASC

SELECT name, salary FROM employees
ORDER BY salary DESC

-- limit
SELECT * FROM  employees
ORDER BY salary DESC
LIMIT 3


-- distinct
SELECT DISTINCT department FROM employees

SELECT employee_id, salary FROM employees
ORDER BY salary DESC