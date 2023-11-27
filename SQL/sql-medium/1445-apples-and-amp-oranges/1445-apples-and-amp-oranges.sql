# Write your MySQL query statement below
WITH a AS (SELECT sale_date,fruit, sum(sold_num) as sum_apples FROM Sales
WHERE fruit = 'apples'
GROUP BY sale_date,fruit),
b AS(SELECT sale_date,fruit, sum(sold_num) as sum_oranges FROM Sales
WHERE fruit = 'oranges'
GROUP BY sale_date,fruit)

SELECT a.sale_date, a.sum_apples - b.sum_oranges AS diff
FROM a,b
WHERE a.sale_date = b.sale_date