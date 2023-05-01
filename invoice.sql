--count how many orders were made from the USA
SELECT COUNT(*)
FROM invoice
WHERE billing_country = 'USA'

--find the largest order total amount
SELECT MAX(total)
from invoice

--findest the smallest order total amount
SELECT MIN(total)
from invoice

--find all orders bigger than $5
SELECT *
FROM invoice
WHERE total > 5

--find all orders smaller than $5
SELECT *
FROM invoice
WHERE total < 5

--Count how many orders were smaller than $5
SELECT COUNT(*)
FROM invoice
WHERE total < 5

--count how many orders were in CA, TX, or AZ
SELECT COUNT(*)
FROM invoice
WHERE billing_state IN ('CA', 'TX', 'AZ')

--get the average total of the orders
SELECT AVG(total)
FROM invoice

--get the total sum of the orders
SELECT SUM(total)
FROM invoice

--update the invoice with an invoice_id of 5 to have a total order amount of 24
UPDATE invoice
SET total = 24
WHERE invoice_id = 5

--delete the invoice with an invoice_id of 1 //note, can't delete a row that has relation to a row from a different table in the database
DELETE 
FROM invoice
WHERE invoice_id = 1
