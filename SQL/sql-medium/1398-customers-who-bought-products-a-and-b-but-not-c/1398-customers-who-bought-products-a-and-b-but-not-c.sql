# Write your MySQL query statement below
SELECT customer_id, customer_name 
FROM Customers
WHERE customer_id IN
(SELECT distinct(c.customer_id) 
FROM ORDERS a
JOIN ORDERS b
USING (customer_id)
JOIN ORDERS c
USING (customer_id)
WHERE a.product_name = 'A' AND b.product_name = 'B' and c.customer_id NOT IN (SELECT customer_id FROM Orders where product_name = 'C'))
