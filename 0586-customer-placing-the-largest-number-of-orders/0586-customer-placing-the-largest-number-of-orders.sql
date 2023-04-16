# Write your MySQL query statement below
select t.customer_number from (select customer_number,count(*) as total from orders group by customer_number order by total desc) t limit 1;
