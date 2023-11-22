# Write your MySQL query statement below
SELECT p.product_name, q.product_id, q.order_id, q.order_date
FROM Products p, 
(SELECT product_id, order_id, order_date, dense_rank() over(partition by product_id order by order_date desc) as rank1
FROM Orders) q
WHERE p.product_id = q.product_id AND q.rank1 = 1
ORDER BY p.product_name ASC, q.product_id ASC, order_id