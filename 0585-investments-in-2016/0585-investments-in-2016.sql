# Write your MySQL query statement below
WITH CTE AS (SELECT p1.pid
FROM Insurance p1, Insurance p2
WHERE p1.lat = p2.lat and p1.lon = p2.lon and p1.pid <> p2.pid)

SELECT ROUND(SUM(tiv_2016),2) AS tiv_2016 FROM INSURANCE WHERE pid in (SELECT DISTINCT(p1.pid)
FROM Insurance p1,Insurance p2
WHERE p1.tiv_2015 = p2.tiv_2015 and p1.pid <> p2.pid and p1.pid NOT IN (SELECT * FROM CTE))

