# Write your MySQL query statement below
SELECT sell_date, count(distinct(product)) as num_sold,
GROUP_CONCAT(DISTINCT product ORDER BY product ASC) AS products
FROM
Activities
GROUP BY sell_date 
ORDER BY sell_date ASC