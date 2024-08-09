# Write your MySQL query statement below
SELECT e.employee_id, name, t.reports_count, t.average_age
FROM Employees as e,
(SELECT reports_to as employee_id,count(employee_id) as reports_count ,ROUND(avg(age),0) as average_age
FROM Employees 
WHERE reports_to IS NOT NULL
GROUP BY reports_to) t
WHERE e.employee_id = t.employee_id
ORDER BY e.employee_id