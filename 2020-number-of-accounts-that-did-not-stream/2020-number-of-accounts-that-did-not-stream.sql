# Write your MySQL query statement below
SELECT ((SELECT count(*) FROM Subscriptions) -  count(s.account_id)) as accounts_count FROM 
Subscriptions s
JOIN Streams t
ON s.account_id = t.account_id
WHERE (year(stream_date) = 2021) OR ((start_date <'2021-01-01') AND(end_date <'2021-01-01')) OR((start_date >'2021-01-01') AND(end_date >'2021-01-01'))