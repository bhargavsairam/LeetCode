# Write your MySQL query statement below


select s.name from orders as o 
inner join company c on o.com_id = c.com_id 
AND c.name = 'RED'
right join salesPerson as s on s.sales_id = o.sales_id
where o.sales_id is NULL
;