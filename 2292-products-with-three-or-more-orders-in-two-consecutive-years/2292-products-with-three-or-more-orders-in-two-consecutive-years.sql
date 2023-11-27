# Write your MySQL query statement below

WITH CTE AS (SELECT product_id, year(purchase_date) as year1, count(order_id) as sum1
FROM Orders
GROUP BY product_id, year(purchase_date)
having sum1 >=3)

SELECT Distinct c1.product_id 
FROM CTE c1 JOIN CTE c2
ON c1.product_id = c2.product_id and c1.year1 = c2.year1+1
