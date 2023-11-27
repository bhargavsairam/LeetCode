# Write your MySQL query statement below
SELECT e.unique_id, emp.name 
FROM
employees as emp 
LEFT OUTER JOIN
EmployeeUNI as e
on
e.id = emp.id