# Write your MySQL query statement below
SELECT q.customer_id, q.product_id, p.product_name 
FROM Products p,
(
SELECT customer_id, product_id, count(product_id) as product_count, dense_rank()over(partition by customer_id order by count(product_id) desc) as rank1
FROM Orders
GROUP BY customer_id, product_id
ORDER BY customer_id,product_count desc
) q
WHERE p.product_id = q.product_id
AND q.rank1 = 1