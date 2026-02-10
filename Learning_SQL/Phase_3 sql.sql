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

-- View Data

SELECT * FROM employees;

-- Basic Syntax

SELECT * FROM employees;

-- Select Specific Columns


SELECT name, salary FROM employees;


-- Filter by Condition

SELECT * FROM employees
WHERE salary > 55000;

-- Multiple Conditions


SELECT * FROM employees
WHERE department = 'IT' AND city = 'Delhi';

-- ORDER BY (Sorting Results)


SELECT * FROM employees
ORDER BY salary DESC;


-- LIMIT (Top N Records)


SELECT * FROM employees
ORDER BY salary DESC
LIMIT 3;

SELECT name, salary
FROM employees
WHERE department = 'IT'
ORDER BY salary DESC
LIMIT 1;


-- PRACTICE --
SELECT * FROM employees
WHERE city = 'Delhi';

SELECT name , department, city  FROM employees
WHERE salary < 60000;

SELECT * FROM employees
ORDER BY salary ASC;


SELECT * FROM employees
ORDER BY salary DESC
LIMIT 2;







