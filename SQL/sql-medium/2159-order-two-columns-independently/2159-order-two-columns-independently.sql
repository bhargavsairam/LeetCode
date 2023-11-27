# Write your MySQL query statement below
WITH A AS (SELECT first_col, row_number() OVER(order by first_col) as r1 FROM Data ), 
B AS (SELECT second_col, row_number() OVER(order by second_col DESC) as r2 FROM Data )

SELECT A.first_col, B.second_col FROM A, B
WHERE A.r1 = B.r2
