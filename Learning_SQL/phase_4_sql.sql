-- Salary greater than 60,000

SELECT * FROM Employees
WHERE salary  > 60000;


-- Salary not equal to 50,000

SELECT * FROM  Employees
WHERE salary != 50000;

-- Practice 1
-- Employees earning less than 55,000

SELECT * FROM Employees
WHERE salary < 55000;

-- Employees earning 65,000 or more

SELECT * FROM Employees 
WHERE  salary >= 65000;

-- AND (All conditions must be true)

SELECT * FROM Employees
WHERE department = 'IT' AND  CITY = 'Delhi';

-- OR (Any condition can be true) 

SELECT * FROM Employees
WHERE city = 'Delhi' OR city = 'Mumbai';

-- NOT (Exclude condition)

SELECT * FROM Employees
WHERE  NOT  department = 'HR';

-- Practice 2
-- HR employees from Pune

SELECT * FROM Employees
WHERE department = 'HR' AND city = 'pune';


-- Employees from Delhi or Bangalore

SELECT * FROM Employees
WHERE City = 'dELHI' OR city = 'Bangalore';

-- Employees not from IT department

SELECT * FROM  Employees
WHERE department != 'IT';

-- IN Operator (Cleaner OR Conditions)

SELECT * FROM Employees
WHERE City IN ('Delhi' , 'Mumbai', 'Pune');

-- Practice 3

-- Employees from IT or HR departments

SELECT * FROM Employees
WHERE department = 'HR' OR department = 'IT';

-- Employees from Delhi or Pune

SELECT * FROM Employees
WHERE city = 'Delhi' OR city = 'Pune';

-- BETWEEN Operator (Ranges)
-- (Used for numeric or date ranges.)

SELECT * FROM Employees 
WHERE salary BETWEEN  50000 AND 60000;

-- Practice 4

-- Employees earning between 48,000 and 60,000

SELECT * FROM Employees 
WHERE salary BETWEEN 48000 AND 60000;

-- Salaries between 60k and 70k

SELECT * FROM Employees 
WHERE salary BETWEEN 60000 AND 70000;

-- Names starting with 'A'
 SELECT * FROM Employees 
 WHERE name LIKE  'A%';

 -- Names ending with 'a'

 SELECT * FROM Employees 
 WHERE name LIKE '%a';

 -- Practice 5

-- Names starting with ‘N’

SELECT * FROM Employees 
 WHERE name LIKE  'N%';

 
-- Names containing ‘h’

SELECT * FROM Employees 
 WHERE name LIKE  '%l';

-- NULL Values

SELECT * FROM Employees
WHERE city IS NULL;

-- Operator Precedence 

-- SQL evaluates:

-- NOT
-- AND
-- OR


SELECT * FROM Employees
WHERE ( department = 'IT' OR department = 'HR')
 AND salary > 60000;

 -- FINAL PRACTICE
 
-- IT employees earning more than 60,000 in Delhi

SELECT * FROM Employees
WHERE city = 'Delhi' AND salary > 60000;


-- Employees not from HR earning less than 55,000

SELECT * fROM Employees
WHERE department != 'HR' AND salary < 60000;

-- Employees from Delhi, Mumbai, or Bangalore

SELECT * FROM Employees
WHERE city IN ('Delhi', 'Mumbai' , 'Bangalore');

-- Top 2 highest-paid non-IT employees

SELECT * FROM Employees
WHERE department != 'IT'
ORDER BY salary DESC
LIMIT 2;


-- Employees whose names start with ‘R’

SELECT * FROM Employees 
WHERE name LIKE 'R%';








