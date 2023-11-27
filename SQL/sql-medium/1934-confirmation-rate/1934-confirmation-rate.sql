# Write your MySQL query statement below
WITH CTE AS
(SELECT user_id, count(action) as count1
 FROM Confirmations
 WHERE action = 'confirmed'
 GROUP BY user_id
 ),
 CTE2 AS
 (SELECT user_id, count(*) as count2
 FROM Confirmations
 GROUP BY user_id
 )
 
 SELECT s.user_id,
 CASE WHEN s.user_id in (CTE.user_id) THEN 
 ROUND(CTE.count1/CTE2.count2,2) ELSE 0 END AS confirmation_rate
 FROM CTE2 LEFT JOIN CTE ON CTE.user_id = CTE2.user_id
 RIGHT JOIN Signups s on CTE.user_id = s.user_id
 