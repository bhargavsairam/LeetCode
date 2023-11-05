# Write your MySQL query statement below

SELECT p.product_id , CASE WHEN q.change_date <= '2019-08-16' THEN p.new_price ELSE 10 END as price
FROM 
Products p,
(
SELECT p.product_id, 
IF(MIN(change_date)>'2019-08-16',MAX(change_date),(SELECT MAX(change_date) FROM Products q WHERE p.product_id = q.product_id AND change_date<='2019-08-16')) AS change_date
FROM Products p
GROUP BY product_id) q
WHERE q.product_id = p.product_id
and q.change_date = p.change_date 
