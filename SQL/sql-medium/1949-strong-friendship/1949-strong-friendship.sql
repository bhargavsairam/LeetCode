# Write your MySQL query statement below
WITH CTE AS 
(SELECT user1_id as friend, user2_id as friend2
FROM Friendship
UNION
SELECT user2_id as friend, user1_id as friend2
FROM Friendship)

SELECT F.user1_id, F.user2_id, count(*) as common_friend
FROM Friendship F
JOIN CTE c1 ON c1.friend = F.user1_id
JOIN CTE c2 ON c2.friend = F.user2_id
WHERE c1.friend2 = c2.friend2
GROUP BY F.user1_id, F.user2_id
HAVING common_friend >= 3