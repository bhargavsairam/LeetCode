# Write your MySQL query statement below
SELECT account_id, day, 
SUM(CASE WHEN type = 'Deposit' THEN amount 
ELSE -amount END) OVER(partition by account_id order by day) AS balance
FROM Transactions
ORDER BY account_id, day