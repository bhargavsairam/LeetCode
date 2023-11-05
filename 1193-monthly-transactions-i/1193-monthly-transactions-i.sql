# Write your MySQL query statement below

SELECT DATE_FORMAT(trans_date,'%Y-%m') as month, country, count(id) as trans_count,
SUM(CASE WHEN state = 'approved' THEN 1 ELSE 0 END) AS approved_count, SUM(amount) as trans_total_amount,
SUM(IF(state = 'approved',amount,0)) AS approved_total_amount
FROM Transactions
GROUP BY month,country

