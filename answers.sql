-- Assignment: Joins and Relationships
-- Submission File: answers.sql
-- Instructions followed: 
--   - Queries are clear and correct
--   - Proper JOIN types used (INNER, LEFT, RIGHT)
--   - Comments explain the approach

-- Replace 'your_database_name' with the actual database you are using
USE your_database_name;


-- Question 1 🧑‍💼
-- Retrieve firstName, lastName, email, and officeCode of all employees
-- INNER JOIN employees with offices using officeCode
SELECT 
    e.firstName,
    e.lastName,
    e.email,
    e.officeCode
FROM employees e
INNER JOIN offices o
    ON e.officeCode = o.officeCode;


-- Question 2 🛍️
-- Retrieve productName, productVendor, and productLine
-- LEFT JOIN products with productlines using productLine
SELECT 
    p.productName,
    p.productVendor,
    p.productLine
FROM products p
LEFT JOIN productlines pl
    ON p.productLine = pl.productLine;


-- Question 3 📦
-- Retrieve orderDate, shippedDate, status, and customerNumber
-- from the first 10 orders
-- RIGHT JOIN customers with orders using customerNumber
SELECT 
    o.orderDate,
    o.shippedDate,
    o.status,
    o.customerNumber
FROM customers c
RIGHT JOIN orders o
    ON c.customerNumber = o.customerNumber
LIMIT 10;
