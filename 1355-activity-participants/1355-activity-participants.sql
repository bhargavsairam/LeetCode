# Write your MySQL query statement below
with CTE as (SELECT a.name, IFNULL(count(f.id),0) AS member_count, dense_rank()over(order by count(f.id)) as row1
FROM Activities a
LEFT JOIN Friends f
ON a.name = f.activity
GROUP BY a.name)

SELECT name as activity from CTE
WHERE row1 <>1 and row1<>(select max(row1) from CTE)