# Write your MySQL query statement below

select member_id, name
, case when count(v.visit_id) = 0 then "Bronze"
when  count(p.visit_id) / count(v.visit_id) >= 0.80 then "Diamond"
when count(p.visit_id) / count(v.visit_id) >= 0.5 then "Gold"
else "Silver"
end as category
from Members m
left join Visits v using(member_id)
left join Purchases p using(visit_id)
group by member_id