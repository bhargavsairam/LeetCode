# Write your MySQL query statement below
SELECT transaction_id FROM
(SELECT transaction_id, dense_rank() over (partition by date_format(day,'%Y-%m-%d')  order by amount desc) as rank1 FROM Transactions )q
WHERE rank1 = 1
ORDER BY transaction_id