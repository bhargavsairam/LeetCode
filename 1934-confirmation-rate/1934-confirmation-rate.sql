# Write your MySQL query statement below

SELECT s.user_id, if(round(SUM(CASE WHEN c.action = 'confirmed' THEN 1 ELSE 0 END)/SUM(CASE WHEN c.user_id THEN 1 ELSE 0 END),2) IS NULL, 0.00, round(SUM(CASE WHEN c.action = 'confirmed' THEN 1 ELSE 0 END)/SUM(CASE WHEN c.user_id THEN 1 ELSE 0 END),2))
AS confirmation_rate
FROM Signups as s LEFT JOIN Confirmations as c 
ON s.user_id = c.user_id 
GROUP BY s.user_id