# Write your MySQL query statement below
SELECT distinct viewer_id as id 
FROM (SELECT viewer_id, view_date, count(distinct article_id) as total
FROM Views
GROUP BY viewer_id, view_date
HAVING total >1) q