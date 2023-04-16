# Write your MySQL query statement below


select
case when count(t.num) > 0 then max(t.num)
     else NULL END AS num
from 
(select num from MyNumbers group by num  having count(num) = 1 )t;