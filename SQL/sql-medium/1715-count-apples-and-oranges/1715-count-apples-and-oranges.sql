# Write your MySQL query statement below

SELECT sum(apple_count) as apple_count, sum(orange_count) as orange_count
FROM 
(
SELECT  SUM(c.apple_count) as apple_count, sum(c.orange_count) as orange_count
FROM Boxes b, Chests C
WHERE b.chest_id = c.chest_id
UNION
SELECT SUM(apple_count) as apple_count, sum(orange_count) as orange_count
FROM Boxes
) q