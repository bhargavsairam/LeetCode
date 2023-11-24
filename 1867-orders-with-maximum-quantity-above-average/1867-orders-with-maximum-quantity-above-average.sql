# Write your MySQL query statement below

WITH A as (SELECT order_id
, avg(quantity) as avg_qnty
, max(quantity) as max_quantity 
FROM OrdersDetails
GROUP BY order_id)

SELECT a.order_id FROM A WHERE A.max_quantity > (SELECT max(avg_qnty) FROM A )