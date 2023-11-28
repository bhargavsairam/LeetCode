# Write your MySQL query statement below
WITH CTE AS (SELECT s.user_id, p.product_id,SUM(p.price*s.quantity) as total_spent
FROM Sales s, Product p
WHERE s.product_id = p.product_id
GROUP BY s.user_id,p.product_id)

SELECT user_id, product_id FROM
(SELECT c.user_id, c.product_id, dense_rank()over(partition by user_id order by total_spent desc) as rank2
FROM CTE c)q
WHERE rank2 = 1
