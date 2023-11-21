# Write your MySQL query statement below
with c AS
(
SELECT id,login_date, DATEDIFF(login_date,'2020-01-01') as date_diff, row_number() OVER(partition by id order by login_date ASC) AS partID
FROM Logins
    GROUP BY id,login_date
)

SELECT id, name FROM Accounts 
WHERE id IN
(SELECT id FROM c
GROUP BY id,date_diff-partID
HAVING count(*) >=5)
ORDER BY id 