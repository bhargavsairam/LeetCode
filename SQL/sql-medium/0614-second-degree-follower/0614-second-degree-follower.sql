# Write your MySQL query statement below
SELECT t1.followee as follower, count(distinct t1.follower) as num
FROM Follow as t1
JOIN Follow as t2
ON t1.followee = t2.follower
GROUP BY t1.followee
ORDER BY follower ASC