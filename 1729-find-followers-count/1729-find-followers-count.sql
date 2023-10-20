# Write your MySQL query statement below
SELECT DISTINCT(user_id), COUNT(DISTINCT follower_id) AS followers_count FROM
Followers
Group BY user_id