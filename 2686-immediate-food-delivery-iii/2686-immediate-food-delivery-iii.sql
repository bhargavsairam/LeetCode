# Write your MySQL query statement below
SELECT order_date, ROUND(AVG(case when order_date = customer_pref_delivery_date THEN 1 ELSE 0 END)*100,2)  as immediate_percentage 
FROM Delivery
GROUP BY order_date
ORDER BY order_date