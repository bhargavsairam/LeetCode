# Write your MySQL query statement below

SELECT activity_date as day, COUNT(DISTINCT user_id) AS active_users
FROM Activity
WHERE DATEDIFF(CAST('2019-07-27' AS DATE),activity_date) <30
AND DATEDIFF(CAST('2019-07-27' AS DATE),activity_date) >= 0
GROUP BY activity_date