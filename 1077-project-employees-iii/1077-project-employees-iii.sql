# Write your MySQL query statement below
SELECT project_id, employee_id FROM
(SELECT p.project_id, e.employee_id, rank() over(PARTITION BY p.project_id ORDER BY e.experience_years DESC) as rank1 
FROM Employee e
JOIN Project p 
ON e.employee_id = p.employee_id
)q
WHERE rank1 = 1