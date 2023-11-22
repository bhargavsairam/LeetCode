# Write your MySQL query statement below

SELECT c.name as country
FROM country c
JOIN Person p
ON c.country_code = SUBSTRING(p.phone_number,1,3)
JOIN Calls l
ON p.id IN (l.caller_id,l.callee_id)
GROUP BY c.name
HAVING AVG(duration) > (select AVG(duration) FROM Calls)