# Write your MySQL query statement below
WITH CTE AS (SELECT visited_on, SUM(AMOUNT) as amount 
FROM Customer
GROUP BY visited_on
),
CTE1 AS(
SELECT visited_on,
    SUM(amount) OVER(ROWS BETWEEN 6 PRECEDING AND CURRENT ROW) AS amount,
    ROUND(AVG(amount) OVER(ROWS BETWEEN 6 PRECEDING AND CURRENT ROW),2 ) AS average_amount,
    ROW_NUMBER() OVER(ORDER BY visited_on ASC) as rn
    FROM CTE
)

SELECT visited_on,amount, average_amount FROM CTE1
WHERE rn>6
#SELECT visited_on, SUM(amount) OVER( ROWS BETWEEN 6 PRECEDING AND CURRENT ROW) AS amount
#FROM CTE


