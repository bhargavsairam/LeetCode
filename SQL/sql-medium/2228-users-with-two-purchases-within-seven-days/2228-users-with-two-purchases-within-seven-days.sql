# Write your MySQL query statement below
SELECT distinct user_id FROM
(
SELECT purchase_id, user_id, purchase_date,
LAG(purchase_date) over(partition by user_id order by purchase_date) as lag_date
FROM Purchases
)q
WHERE datediff(purchase_date,lag_date) <= 7
