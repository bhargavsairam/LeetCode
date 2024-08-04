# Write your MySQL query statement below
SELECT ROUND(AVG(CASE WHEN order_date = customer_pref_delivery_date THEN 1 ELSE 0 END)*100,2) as immediate_percentage
FROM (SELECT customer_id,row_number() over (partition by customer_id order by order_date ASC) as num1,order_date, customer_pref_delivery_date
FROM Delivery) t
WHERE num1 = 1