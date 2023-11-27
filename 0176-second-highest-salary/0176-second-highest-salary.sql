# Write your MySQL query statement below
SELECT max(salary) as SecondHighestSalary
FROM Employee
WHERE salary NOT IN(SELECT max(salary) FROM Employee)