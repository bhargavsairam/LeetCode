# Write your MySQL query statement below
WITH CTE AS (SELECT a.account_id, date_format(day, '%Y%m') as month1,SUM(amount) as total_amount, a.max_income
FROM Transactions t, Accounts a 
WHERE a.account_id = t.account_id
AND t.type = 'Creditor'
GROUP BY account_id, date_format(day, '%Y-%m') 
HAVING total_amount > a.max_income
)
SELECT c.account_id
FROM CTE as c, CTE as c1
WHERE c.account_id = c1.account_id
AND PERIOD_DIFF (c.month1,c1.month1) = 1
GROUP BY c.account_id
ORDER BY c.account_id