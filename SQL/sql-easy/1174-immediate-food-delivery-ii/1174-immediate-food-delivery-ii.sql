# Write your MySQL query statement below
SELECT ROUND(SUM(CASE WHEN q.order_date = q.delivery_date THEN 1 ELSE 0 END)*100/count(*),2) AS immediate_percentage
FROM 
(SELECT customer_id, min(order_date) as order_date, min(customer_pref_delivery_date) as delivery_date
FROM Delivery
GROUP BY customer_id) q