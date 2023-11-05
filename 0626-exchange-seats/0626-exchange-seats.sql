# Write your MySQL query statement below

WITH CTE AS(SELECT MAX(id) as maxi FROM Seat)


SELECT IF(id%2 = 0,
CASE WHEN id%2 = 0 THEN id - 1 
WHEN id%2 <> 0 THEN id+1 END,
CASE WHEN id = (SELECT * FROM CTE) THEN id
WHEN id % 2 = 0 THEN id -1
WHEN id %2 <> 0 THEN id +1 END)
AS id, student FROM Seat
ORDER BY id ASC