# Write your MySQL query statement below
SELECT e.employee_id
FROM Employees e
LEFT JOIN
(SELECT employee_id, SUM(CEIL(TIMESTAMPDIFF(SECOND,in_time,out_time)/60)) as duration
FROM Logs
GROUP BY employee_id)q
ON e.employee_id = q.employee_id
WHERE e.needed_hours*60 > IFNULL(q.duration,0)