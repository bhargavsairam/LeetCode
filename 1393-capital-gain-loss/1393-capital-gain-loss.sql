# Write your MySQL query statement below
WITH CTE1 AS(SELECT stock_name,sum(price)  as price
FROM Stocks
WHERE operation = 'Buy'
GROUP BY stock_name),
CTE2 AS (SELECT stock_name,sum(price) as price
FROM Stocks
WHERE operation = 'Sell'
GROUP BY stock_name)

Select CTE1.stock_name, CTE2.price - CTE1.price AS capital_gain_loss
FROM CTE1,CTE2
WHERE CTE1.stock_name = CTE2.stock_name