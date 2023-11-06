# Write your MySQL query statement below
WITH CTE AS (SELECT account_id,
CASE WHEN income<20000 THEN 1 ELSE 0 END AS 'Low_Salary' ,
IF(income>50000, 1,0) AS 'High_Salary',
IF(20000<=income AND income<=50000,1,0) AS 'Average_Salary' 
FROM Accounts)

SELECT 'Low Salary' AS category,SUM(low_Salary) AS accounts_count
FROM CTE
UNION 
SELECT 'Average Salary' AS category,SUM(Average_salary) AS accounts_count
FROM CTE
UNION 
SELECT 'High Salary' AS category,SUM(High_salary) AS accounts_count
FROM CTE