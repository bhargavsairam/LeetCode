# Write your MySQL query statement below

SELECT a1.machine_id, 
ROUND(AVG((a1.timestamp)-(a2.timestamp)),3) AS processing_time
FROM activity a1
INNER JOIN activity a2
ON a1.machine_id = a2.machine_id
and a1.process_id = a2.process_id
WHERE a1.activity_type = 'end'
and a2.activity_type = 'start'
GROUP BY a1.machine_id

