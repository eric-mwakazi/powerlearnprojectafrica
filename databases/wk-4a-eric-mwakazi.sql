-- This query calculates the total payment amount for each payment date
-- It groups the payments by payment date and calculates the total amount for each date.
-- The results are ordered by payment date in descending order, and only the top 5 latest dates are shown.
SELECT paymentDate, SUM(amount) AS totalAmount
FROM payments
GROUP BY paymentDate
ORDER BY paymentDate DESC
LIMIT 5;

-- This query calculates the average credit limit for each customer.
-- It displays the customer name, country, and the average credit limit.
-- The results are grouped by customer name and country.
SELECT customerName, country, AVG(creditLimit) AS avgCreditLimit
FROM customers
GROUP BY customerName, country;

-- This query calculates the total price for each product ordered.
-- It retrieves the product code, quantity ordered, and calculates the total price (quantity * priceEach).
-- The results are grouped by product code and quantity ordered.

SELECT productCode, quantityOrdered, SUM(quantityOrdered * priceEach) AS totalPrice
FROM orderdetails
GROUP BY productCode, quantityOrdered;

-- This query finds the highest payment amount for each check number.
-- It groups the payments by check number and selects the highest payment amount for each check.

SELECT checkNumber, MAX(amount) AS highestAmount
FROM payments
GROUP BY checkNumber;
