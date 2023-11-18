# Write your MySQL query statement below
SELECT ROUND(SQRT(POWER(x1.x - x2.x,2) + POWER(x1.y - x2.y,2)),2) as shortest
FROM Point2D as x1
CROSS JOIN point2D as x2
HAVING shortest != 0 
ORDER BY shortest ASC
LIMIT 1