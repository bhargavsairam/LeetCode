# Write your MySQL query statement below
SELECT user_id, gender
FROM Genders
ORDER BY dense_rank() over(partition by gender order by user_id asc), length(gender) desc
