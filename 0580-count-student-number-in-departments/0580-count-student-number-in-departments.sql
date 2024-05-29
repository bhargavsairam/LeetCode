# Write your MySQL query statement below
SELECT d.dept_name, count(s.student_id) as student_number
FROM Department as d
LEFT JOIN Student as s
ON s.dept_id = d.dept_id
GROUP BY d.dept_name
ORDER BY student_number DESC