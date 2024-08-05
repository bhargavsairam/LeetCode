# Write your MySQL query statement below

SELECT product_id, year as first_year, quantity, price FROM
(SELECT product_id, year, quantity, price, rank() over(partition by product_id order by year ASC) as rank1
FROM Sales) t
WHERE rank1 = 1
