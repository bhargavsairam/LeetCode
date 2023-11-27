# Write your MySQL query statement below
SELECT u.name, 
CASE WHEN r.travelled_distance IS NULL THEN 0
ELSE r.travelled_distance 
END as travelled_distance
FROM
Users AS u
LEFT OUTER JOIN
(SELECT user_id, SUM(distance) as travelled_distance 
FROM
Rides 
GROUP BY user_id) r
ON u.id = r.user_id
ORDER BY r.travelled_distance DESC, u.name ASC