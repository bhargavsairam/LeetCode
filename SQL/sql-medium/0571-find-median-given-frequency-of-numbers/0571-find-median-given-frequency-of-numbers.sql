# Write your MySQL query statement below
 WITH CTE AS (SELECT num,
           SUM(frequency) over (ORDER BY num) - frequency AS lower_num,
           SUM(frequency) over (ORDER BY num) AS upper_num,
           SUM(frequency) over () / 2 AS medium_num
    from numbers )
    
SELECT ROUND(AVG(num),1) as median
FROM CTE 
WHERE medium_num BETWEEN lower_num AND upper_num