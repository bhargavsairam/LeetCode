# Write your MySQL query statement below

WITH CTE AS (SELECT R1.user_id as user1_id, R2.user_id as user2_id, count(*) as total_sum
FROM Relations R1 
JOIN Relations R2 
ON R1.follower_id = R2.follower_id
WHERE R1.user_id < R2.user_id
GROUP BY user1_id, user2_id)

SELECT user1_id, user2_id
FROM CTE
WHERE  total_sum = (SELECT MAX(total_sum) FROM CTE)