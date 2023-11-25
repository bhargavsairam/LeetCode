# Write your MySQL query statement below
WITH A AS (SELECT customer_id
FROM Orders
GROUP BY customer_id, order_type
having order_type = 0)

SELECT * FROM Orders
WHERE customer_id in (SELECT * FROM A)
AND order_type = 0
UNION
SELECT * FROM Orders
WHERE customer_id NOT IN (SELECT * FROM A)