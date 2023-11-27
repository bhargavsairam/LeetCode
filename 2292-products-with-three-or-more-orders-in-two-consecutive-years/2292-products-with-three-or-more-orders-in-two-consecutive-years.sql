# Write your MySQL query statement below

WITH CTE AS (SELECT product_id, year(purchase_date) as year1, count(order_id) as sum1
FROM Orders
GROUP BY product_id, year(purchase_date)
having sum1 >=3)

SELECT distinct product_id
FROM (SELECT product_id, year1,lead(year1) over(partition by product_id order by year1) as lead_year
FROM CTE) q
WHERE lead_year - year1 = 1
