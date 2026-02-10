
-- Count All Rows

SELECT COUNT(*) FROM employees;

-- (Result: total number of employees.)


-- Count Non-NULL Values in a Column

SELECT COUNT(city) FROM employees;
-- (If city had NULLs, those rows would be excluded.)


-- Practice 1

-- Count total employees

SELECT COUNT(*) AS total_employees FROM employees;

-- 👉(COUNT(*) counts all rows, regardless of NULL values.)


-- Count how many employees have salary values

SELECT COUNT(salary) AS employees_with_salary
FROM employees;

-- Total Salary Cost

SELECT SUM (salary) FROM employees;
-- (📌 Business meaning: monthly payroll cost)

-- SUM with WHERE

SELECT SUM ( salary ) FROM employees
WHERE department = 'IT';
-- (📌 Total salary cost of IT department.)

-- Practice 2

-- Total salary of HR employees

SELECT SUM(salary) AS total_hr_salary
FROM employees
WHERE department = 'HR';


-- Total salary of employees in Delhi

SELECT SUM (salary)  AS total_delhi_salary
FROM employees
WHERE city = 'Delhi';


-- Average Salary

SELECT AVG (salary) FROM employees;

-- Average with Condition

SELECT AVG (salary)
FROM employees 
WHERE department = 'HR';


-- Important Note:

-- AVG ignores NULL values
-- Result may be decimal


-- Practice 3

-- Average salary of IT employees

SELECT AVG (salary) FROM employees
WHERE department = 'IT';


-- Average salary of employees earning more than 50,000

SELECT AVG (salary) FROM employees
WHERE salary > 50000;


-- Lowest Salary

SELECT MIN (salary) FROM employees;

-- Lowest Salary in HR

SELECT MIN (salary ) FROM employees
WHERE department = 'HR';


-- Practice 4


-- Lowest salary in company

SELECT MIN (salary) AS lowest_salary
FROM employees;


-- Lowest salary in IT department


SELECT MIN(salary) AS lowest_it_salary
FROM employees
WHERE department = 'IT';


-- Highest Salary

 SELECT MAX (salary) FROM employees;

 -- Highest Salary in Delhi

SELECT MAX (salary) FROM employees
WHERE city = 'Delhi';



