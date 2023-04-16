# Write your MySQL query statement below
select t.product_id, round((t.total_value/t.total_count),2) as average_price from 
(select p.product_id, (sum(p.price* u.units)) as total_value,sum(u.units) as total_count from prices p, UnitsSold u where
p.product_id = u.product_id and 
u.purchase_date between p.start_date and p.end_date
group by p.product_id) t;