# Write your MySQL query statement below
SELECT customer_id, COUNT(visit_id) AS count_no_trans
FROM
VISITS
WHERE
visit_id NOT IN (SELECT VISIT_ID FROM Transactions)
GROUP BY customer_id