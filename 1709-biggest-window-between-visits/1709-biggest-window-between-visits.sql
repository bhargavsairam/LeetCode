# Write your MySQL query statement below
SELECT user_id, max(difference) as biggest_window
FROM
(
SELECT user_id, 
DATEDIFF(LEAD(visit_date,1,'2021-01-01') over(partition by user_id order by visit_date),visit_date ) as difference
FROM UserVisits
)q
GROUP BY user_id
ORDER BY user_id