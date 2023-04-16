# Write your MySQL query statement below

select email from (select email, count(*) as total from person group by email) t 
where t.total >1; 