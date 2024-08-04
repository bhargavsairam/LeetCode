# Write your MySQL query statement below

SELECT ROUND(SUM(IF(date_difference = 1 AND rownum1 = 1,1,0))/(SELECT COUNT(DISTINCT player_id) FROM Activity),2) AS fraction
FROM
(SELECT player_id, event_date, datediff(lead(event_date) over(partition by player_id order by event_date ASC),event_date) as date_difference, row_number() over(partition by player_id order by event_date) as rownum1 FROM Activity) t
