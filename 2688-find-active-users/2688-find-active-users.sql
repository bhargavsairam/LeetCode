# Write your MySQL query statement below
WITH CTE AS 
(SELECT user_id, created_at, lag(created_at) over(partition by user_id order by created_at) as lag_date
FROM Users)

SELECT distinct user_id FROM CTE 
WHERE DATEDIFF(created_at,lag_date) <=7