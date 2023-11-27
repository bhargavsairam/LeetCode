# Write your MySQL query statement below

SELECT login_date, count(DISTINCT user_id) AS user_count FROM
(
    SELECT distinct user_id, MIN(activity_date)  as login_date
FROM Traffic
WHERE activity = 'login'
GROUP BY user_id
) q
WHERE DATEDIFF('2019-06-30',login_date) <= 90
GROUP BY login_date

