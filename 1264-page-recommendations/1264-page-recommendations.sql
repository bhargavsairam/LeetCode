# Write your MySQL query statement below
#SELECT page_id 
#FROM Likes WHERE 

SELECT DISTINCT page_id AS recommended_page
FROM Likes
WHERE user_id IN (SELECT CASE WHEN user1_id = 1 THEN user2_id
WHEN user2_id = 1 THEN user1_id END as Friends
FROM Friendship
HAVING Friends is NOT NULL)
AND page_id NOT IN(SELECT page_id FROM Likes WHERE user_id = 1)