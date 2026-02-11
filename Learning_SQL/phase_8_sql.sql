--DROP TABLE employees
DROP TABLE employees;

-- Create Customers Table
CREATE TABLE customers (
    customer_id SERIAL PRIMARY KEY,
    name VARCHAR(50),
    city VARCHAR(50)
);


-- Insert Customers

INSERT INTO customers (name, city)
VALUES
('Amit', 'Delhi'),
('Sara', 'Mumbai'),
('John', 'Bangalore'),
('Neha', 'Delhi');

-- Create Orders Table

CREATE TABLE orders (
    order_id SERIAL PRIMARY KEY,
    customer_id INT,
    amount INT,
    order_date DATE
);


-- Insert Orders

INSERT INTO orders (customer_id, amount, order_date)
VALUES
(1, 5000, '2024-01-10'),
(1, 3000, '2024-02-15'),
(2, 7000, '2024-01-20'),
(3, 2000, '2024-03-01');


-- INNER JOIN

-- Syntax Pattern

SELECT columns
FROM table1
INNER JOIN table2
ON table1.column = table2.column;

-- Show Customer Name with Order Amount

SELECT c.name, o.amount
FROM customers c
INNER JOIN orders o
ON c.customer_id = o.customer_id;

-- (📌 INNER JOIN = only matching records)


-- Practice 1

-- Show customer name and order date

SELECT c.name,
       o.order_date
FROM customers c
INNER JOIN orders o
ON c.customer_id = o.customer_id;



-- Show customer city and order amount

SELECT c.city,
       o.amount
FROM customers c
INNER JOIN orders o
ON c.customer_id = o.customer_id;

-- Practice 2

-- Show all customers and their orders (if any)

-- (We use LEFT JOIN because we want all customers — even if they haven’t ordered.)

SELECT c.name,
       o.order_id,
       o.order_date,
       o.amount
FROM customers c
LEFT JOIN orders o
  ON c.customer_id = o.customer_id;

  

-- Identify customers with no orders

-- (Now we filter the NULL values from that LEFT JOIN.)

SELECT c.name
FROM customers c
LEFT JOIN orders o
  ON c.customer_id = o.customer_id
WHERE o.order_id IS NULL;



-- JOIN + GROUP BY (Real Analytics)


-- Total Sales per Customer

SELECT c.name, SUM(o.amount) AS total_spent
FROM customers c
INNER JOIN orders o
ON c.customer_id = o.customer_id
GROUP BY c.name
ORDER BY total_spent DESC;

-- (📌 This is a real interview-level query.)

-- Practice 3

-- Total sales per city

-- (We join first (because sales are in orders, city is in customers), then group.)

SELECT c.city,
       SUM(o.amount) AS total_sales
FROM customers c
JOIN orders o
  ON c.customer_id = o.customer_id
GROUP BY c.city
ORDER BY total_sales DESC;

-- Number of orders per customer

SELECT c.name,
       COUNT(o.order_id) AS total_orders
FROM customers c
LEFT JOIN orders o
  ON c.customer_id = o.customer_id
GROUP BY c.name
ORDER BY total_orders DESC;

-- Customers with total spending > 5000

-- (Now we use HAVING )

SELECT c.name,
       SUM(o.amount) AS total_spending
FROM customers c
JOIN orders o
  ON c.customer_id = o.customer_id
GROUP BY c.name
HAVING SUM(o.amount) > 5000;




