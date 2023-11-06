# Write your MySQL query statement below
WITH CTE AS (SELECT turn, person_id, person_name, weight, SUM(weight) OVER(ORDER BY turn ASC) AS total_weight
FROM Queue)

SELECT person_name 
FROM Queue q
WHERE q.turn in(SELECT MAX(turn) FROM CTE WHERE total_weight<=1000)