# Write your MySQL query statement below
SELECT product_id 
FROM Products
WHERE low_fats in ('Y','y')
AND recyclable in ('Y','y')