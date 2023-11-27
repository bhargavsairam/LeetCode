# Write your MySQL query statement below
SELECT min(log_id) as start_id, max(log_id) as end_id 
FROM
(SELECT log_id, ROW_NUMBER() OVER(order by log_id) as rank1
FROM logs) q
GROUP BY log_id - rank1