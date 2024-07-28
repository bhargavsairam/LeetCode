# Write your MySQL query statement below
SELECT machine_id, ROUND(SUM(CASE WHEN activity_type = 'start' THEN timestamp*(-1) ELSE timestamp END)/SUM(case when activity_type = 'start' THEN 1 END),3) AS processing_time 
FROM Activity
GROUP BY machine_id
