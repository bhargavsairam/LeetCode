# Write your MySQL query statement below
WITH A AS(
SELECT city_id, day, degree, row_number() over(partition by city_id order by degree desc, day asc) as rank1
FROM Weather)

SELECT city_id, day,degree FROM A
WHERE rank1 = 1
ORDER BY city_id