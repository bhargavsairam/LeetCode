# Write your MySQL query statement below
SELECT customer_id, count(*) as count_no_trans
FROM
(SELECT customer_id FROM Visits as v
LEFT JOIN Transactions as t on v.visit_id = t.visit_id
WHERE transaction_id IS NULL) as t
GROUP BY customer_id