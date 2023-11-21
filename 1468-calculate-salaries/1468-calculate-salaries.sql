# Write your MySQL query statement below
with a as(SELECT company_id, employee_id, employee_name, salary, max(salary) over(partition by company_id) as max_salary
FROM Salaries)

SELECT company_id, employee_id, employee_name, 
(CASE WHEN max_salary < 1000 then salary
WHEN max_salary > 1000 AND max_salary <10000 then round(salary - 0.24*salary)
WHEN max_salary > 10000 THEN round(salary - 0.49*salary)
END) AS salary
FROM a