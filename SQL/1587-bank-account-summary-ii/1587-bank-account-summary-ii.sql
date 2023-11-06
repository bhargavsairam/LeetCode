# Write your MySQL query statement below
SELECT name, balance FROM
(SELECT u.account, u.name as name, SUM(t.amount) AS balance
FROM Users AS u 
INNER JOIN
Transactions AS t
ON u.account = t.account
GROUP BY u.account,u.name) q
WHERE balance>10000