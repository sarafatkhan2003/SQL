
-- Syntax Pattern (Memorize)

SELECT group_column, AGG_FUNCTION(column)
FROM table
GROUP BY group_column;

-- (Every non-aggregated column in SELECT must appear in GROUP BY.)

-- Average Salary per Department

SELECT department , AVG (salary) 
FROM employees
GROUP BY department;


-- Practice 1

-- Total salary per department

SELECT department , SUM(salary)
FROM employees
GROUP BY department;

-- Employee count per department

SELECT department , COUNT(*)
FROM employees
GROUP BY department;

-- Count Employees per City

SELECT city, COUNT(*) AS total_employees
FROM employees
GROUP BY city;

-- (📌 AS creates alias (renamed column).)

-- Max Salary per Department

SELECT department ,  MAX(salary) AS max_salary
FROM employees
GROUP BY department;

-- Practice 2

-- Number of employees per city

SELECT city , COUNT(*) AS  number_0f_employees
FROM employees
GROUP BY city;


-- Minimum salary per department

SELECT department , MIN (salary) AS minimum_salary
FROM employees
GROUP BY department;


-- Maximum salary per city

SELECT city , MAX( salary) AS maximum_salary
FROM employees 
GROUP BY city;


-- Department + City

SELECT department , city , AVG(salary) AS  avg_salary
FROM employees
GROUP BY department , city;



-- Correct: Use HAVING

SELECT department , AVG(salary)  AS  avg_salary
FROM employees
GROUP BY department 
HAVING AVG(salary) > 60000;

--(📌 Filters groups, not rows.)


-- Practice 4

-- Departments with average salary > 55,000


SELECT department , AVG(salary) AS avg_salary
FROM employees
GROUP BY department 
HAVING AVG(salary) >55000;


-- Cities with more than 1 employee

 SELECT city , COUNT(*) AS employee_count
 FROM employees
 GROUP BY city
 HAVING COUNT(*) >1;


 -- WHERE + GROUP BY + HAVING


 SELECT department, COUNT(*)
FROM employees
WHERE city = 'Delhi'
GROUP BY department
HAVING COUNT(*) > 1;


-- Practice 5

-- Departments in Delhi with avg salary > 60,000

SELECT department , AVG(salary)  AS avg_salary
FROM employees
WHERE city = 'Delhi'
GROUP BY department
HAVING AVG(salary) > 60000;



-- Cities with total salary > 100,000

SELECT 
    city,
    SUM(salary) AS total_salary
FROM Employees
GROUP BY city
HAVING SUM(salary) > 100000;
