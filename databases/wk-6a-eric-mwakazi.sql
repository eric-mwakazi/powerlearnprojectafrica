-- This query retrieves first name, last name, email, and office code
-- of all employees by performing an INNER JOIN with the offices table
-- using the common column 'officeCode'.
SELECT e.firstName, e.lastName, e.email, e.officeCode
FROM employees e
INNER JOIN offices o ON e.officeCode = o.officeCode;

-- This query retrieves the product name, vendor, and product line
-- by performing a LEFT JOIN from products to productlines
-- on the 'productLine' column.
SELECT p.productName, p.productVendor, pl.productLine
FROM products p
LEFT JOIN productlines pl ON p.productLine = pl.productLine;

-- This query retrieves the order date, shipped date, status,
-- and customer number for the first 10 orders.
-- It uses a RIGHT JOIN to include all orders, even if some customers might not be in the customers table.
SELECT o.orderDate, o.shippedDate, o.status, o.customerNumber
FROM customers c
RIGHT JOIN orders o ON c.customerNumber = o.customerNumber
LIMIT 10;
