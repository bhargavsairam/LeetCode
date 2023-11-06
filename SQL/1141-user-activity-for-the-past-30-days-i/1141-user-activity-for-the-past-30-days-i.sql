# Write your MySQL query statement below
SELECT activity_date as day, count(distinct(user_id)) as active_users
FROM Activity
where DATEDIFF( '2019-07-28',activity_date)<=30 and DATEDIFF( '2019-07-28',activity_date)>=0
GROUP BY activity_date