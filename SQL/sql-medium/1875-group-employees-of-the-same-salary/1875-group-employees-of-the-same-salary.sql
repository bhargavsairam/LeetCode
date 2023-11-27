# Write your MySQL query statement below

SELECT e.Employee_id, e.name, e.salary, q.team_id
FROM Employees e,
(
SELECT salary, dense_rank() over(order by salary asc) as team_id
FROM Employees
GROUP BY salary
HAVING count(*) >=2
)q
WHERE e.salary = q.salary
ORDER BY q.team_id ASC,e.employee_id 