# Write your MySQL query statement below
SELECT user_id, user_name, q.credit, IF(q.credit<0,'Yes','No') as credit_limit_breached
FROM
(SELECT u.user_id, u.user_name,
SUM(CASE WHEN t.paid_by = u.user_id THEN -t.amount
   WHEN t.paid_to  = u.user_id THEN  t.amount 
    ELSE 0
   END) + u.credit AS credit
FROM Users u,
Transactions t
GROUP BY u.user_id, u.user_name) q