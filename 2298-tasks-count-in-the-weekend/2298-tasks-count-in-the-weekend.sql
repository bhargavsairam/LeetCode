# Write your MySQL query statement below
WITH CTE AS (SELECT WEEKDAY(submit_date) as day FROM Tasks)


SELECT SUM(case when day>=5 THEN 1 ELSE 0 END) as weekend_cnt, SUM(case when day<5 THEN 1 ELSE 0 END) as working_cnt
FROM CTE