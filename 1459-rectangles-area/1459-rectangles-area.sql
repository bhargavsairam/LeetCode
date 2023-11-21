# Write your MySQL query statement below
SELECT p11.id as p1,
p22.id as p2,
IF(((p22.x_value-p11.x_value)* (p22.y_value-p11.y_value))<0,- ((p22.x_value-p11.x_value)* (p22.y_value-p11.y_value)),((p22.x_value-p11.x_value)* (p22.y_value-p11.y_value))) AS AREA
FROM Points p11 
CROSS JOIN Points p22
WHERE p11.x_value <> p22.x_value and p11.y_value <>p22.y_value 
having p1<p2
ORDER BY AREA desc, p1,p2 ASC