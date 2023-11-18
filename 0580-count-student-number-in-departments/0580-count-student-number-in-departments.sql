# Write your MySQL query statement below
SELECT dept_name, IF(q.student_number IS NULL,0,q.student_number) AS student_number
FROM Department as d
LEFT JOIN 
(select dept_id, count(student_id) as student_number
FROM student
GROUP BY dept_id) q
ON d.dept_id = q.dept_id
ORDER BY student_number DESC, dept_name ASC