--DROP TABLE employees
DROP TABLE employees;
-- Create Your First Table

CREATE TABLE employees (
    emp_id SERIAL PRIMARY KEY,
    name VARCHAR(50),
    department VARCHAR(50),
    salary INT,
    city VARCHAR(50)
);


-- Insert Data

INSERT INTO employees (name, department, salary, city)
VALUES
('Amit', 'IT', 60000, 'Delhi'),
('Sara', 'HR', 50000, 'Mumbai'),
('John', 'Finance', 70000, 'Bangalore'),
('Neha', 'IT', 65000, 'Delhi'),
('Rahul', 'HR', 48000, 'Pune');


--  Basic ORDER BY

SELECT * FROM employees
ORDER BY salary;

-- DESC (Descending Order)
SELECT * FROM employees
ORDER BY salary DESC;

-- ORDER BY Multiple Columns
SELECT * FROM employees
ORDER BY department ASC ,  salary DESC;

-- Practice 1

-- Sort employees by city (A–Z)


SELECT * FROM employees AS sort_employess
ORDER BY city;


-- Sort employees by department, then salary (highest first)

SELECT * FROM employees
ORDER BY department ASC , salary DESC;

-- Basic LIMIT

SELECT * FROM employees
LIMIT 3;


-- LIMIT with ORDER BY

SELECT * FROM employees
ORDER BY salary DESC
LIMIT 3;

-- (📌 Always pair LIMIT with ORDER BY.)


-- Practice 2

-- Top 3 highest-paid employees

SELECT * FROM employees 
ORDER BY salary  DESC
LIMIT 3;


-- Lowest-paid employee

SELECT * FROM employees 
ORDER BY salary  ASC
LIMIT 3;

-- Alias for Columns

SELECT AVG(salary) AS avg_salary
FROM employees;

-- Alias with GROUP BY

SELECT department, COUNT(*) AS total_employees
FROM employees
GROUP BY department;


-- Alias for Tables (Used in Joins Later)



SELECT e.name , e.salary
FROM employees AS e;

-- (📌 Makes queries shorter and cleaner.)

-- Practice 3

-- Average salary per department (use alias)

SELECT department, 
       AVG(salary) AS average_salary
FROM employees
GROUP BY department;

-- Total salary per city (use alias)

SELECT city, 
       SUM(salary) AS total_salary
FROM employees
GROUP BY city;

-- (SUM(salary) adds all salaries)

-- (Grouped by city)

-- (Alias makes output clean)

-- ORDER BY Using Aliases


SELECT  department , AVG(salary) AS avg_salary
FROM  employees
GROUP BY department
ORDER BY avg_salary DESC;

-- ORDER BY Column Position

SELECT department , AVG(salary)
FROM employees
GROUP BY department
ORDER BY 2 DESC;


-- Real-World Analyst Queries (Putting It All Together)


-- Top-paying Departments


SELECT department , AVG(salary) AS avg_salary
FROM employees
GROUP BY department
HAVING AVG(salary) > 50000
ORDER BY avg_salary DESC
LIMIT 2;


-- City-wise Employee Ranking



SELECT city , COUNT(*) AS employee_count
FROM employees
GROUP BY city
ORDER BY employee_count DESC;


-- FINAL PRACTICE


-- Top 2 departments by average salary

SELECT department,
       AVG(salary) AS average_salary
FROM employees
GROUP BY department
ORDER BY average_salary DESC
LIMIT 2;

-- Bottom 1 city by total salary

SELECT city,
       SUM(salary) AS total_salary
FROM employees
GROUP BY city
ORDER BY total_salary ASC
LIMIT 1;


-- Cities ordered by number of employees

SELECT city,
       COUNT(*) AS employee_count
FROM employees
GROUP BY city
ORDER BY employee_count DESC;


-- Departments ordered by highest salary

-- (Meaning: department with highest individual salary ranks first)

SELECT department,
       MAX(salary) AS highest_salary
FROM employees
GROUP BY department
ORDER BY highest_salary DESC;


-- Top-paid employee overall

SELECT *
FROM employees
ORDER BY salary DESC
LIMIT 1;


