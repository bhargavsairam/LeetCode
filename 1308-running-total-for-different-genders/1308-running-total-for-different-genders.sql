# Write your MySQL query statement below
SELECT gender, day, sum(score_points) over(partition by gender order by day asc) as total
FROM Scores
Group By gender,day
ORDER BY gender, day asc