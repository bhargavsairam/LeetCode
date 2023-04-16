# Write your MySQL query statement below

select p.project_id, round(sum(e.experience_years)/ count(*),2) as average_years from project p, employee e 
where e.employee_id = p.employee_id group by p.project_id