# Write your MySQL query statement below
SELECT c.name as customer_name, q.customer_id, q.order_id, q.order_date
FROM Customers as c,
(SELECT customer_id,order_id, order_date, row_number() over(partition by customer_id order by order_date desc) as rank1
FROM Orders) q
WHERE c.customer_id = q.customer_id
and rank1 <4
order by c.name asc, q.customer_id asc, q.order_date desc