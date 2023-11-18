# Write your MySQL query statement below
WITH CTE AS (SELECT business_id, CASE WHEN a.occurences >q.avg_evnt THEN 1 else 0 end as abv_avg
FROM Events a,
(select event_type, AVG(occurences) as avg_evnt
FROM Events
GROUP BY event_type) q 
WHERE a.event_type = q.event_type)

SELECT business_id 
FROM CTE
GROUP BY business_id
HAVING SUM(abv_avg) > 1