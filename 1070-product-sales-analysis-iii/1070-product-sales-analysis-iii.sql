# Write your MySQL query statement below
SELECT s.product_id, q.first_year, s.quantity, s.price
FROM Sales as s,
(SELECT product_id, Min(year) as first_year 
FROM Sales
GROUP BY product_id) q
WHERE s.product_id = q.product_id and s.year = q.first_year