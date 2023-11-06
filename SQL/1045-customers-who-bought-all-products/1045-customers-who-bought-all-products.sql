# Write your MySQL query statement below
SELECT Customer_id 
FROM Customer
GROUP BY customer_id
HAVING COUNT(distinct product_key) = (SELECT Count(product_key) FROM Product)
