-- Query 1: Retrieve checkNumber, paymentDate, and amount from the payments table
-- This query fetches the details of payments made, including the check number,
-- payment date, and the amount for each payment recorded in the payments table.
SELECT checkNumber, paymentDate, amount
FROM payments;

-- Query 2: Retrieve orderDate, requiredDate, and status of orders that are currently 'In Process'
-- This query selects orders that have a status of 'In Process'.
-- It retrieves the order date, required date, and status of these orders, 
-- and sorts them in descending order by the order date (most recent orders first).
SELECT orderDate, requiredDate, status
FROM orders
WHERE status = 'In Process'
ORDER BY orderDate DESC;

-- Query 3: Display firstName, lastName, and email of employees whose job title is 'Sales Rep'
-- This query fetches the first name, last name, and email of employees who hold
SELECT firstName, lastName, email
FROM employees
WHERE jobTitle = 'Sales Rep'
ORDER BY employeeNumber DESC;

-- Query 4: Retrieve all columns and records from the offices table
-- This query retrieves all columns and all records from the 'offices' table.
SELECT * FROM offices;

-- Query 5: Fetch productName and quantityInStock from the products table
-- This query selects the product name and quantity in stock for each product in the 'products' table.
-- The results are sorted by the buy price in ascending order and limited to 5 records.
SELECT productName, quantityInStock
FROM products
ORDER BY buyPrice ASC
LIMIT 5;
