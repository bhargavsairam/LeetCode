# Write your MySQL query statement below
with CTE AS (SELECT emp_id, event_day, sum(in_time) as in_time, sum(out_time) as out_time 
FROM Employees 
GROUP BY event_day, emp_id)

SELECT event_day as day, emp_id, out_time-in_time as total_time 
FROM CTE