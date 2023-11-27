# Write your MySQL query statement below
WITH CTE1 AS (SELECT employee_id FROM Employees 
WHERE manager_id =  1 AND employee_id <> 1),
CTE2 AS (SELECT employee_id FROM Employees
WHERE manager_id in (SELECT * FROM CTE1)),
CTE3 AS (SELECT employee_id FROM Employees
WHERE manager_id in (SELECT * FROM CTE2))


SELECT * FROM CTE1
UNION 
SELECT * FROM CTE2
UNION
SELECT * FROM CTE3
