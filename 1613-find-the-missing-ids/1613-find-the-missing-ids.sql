# Write your MySQL query statement below

WITH RECURSIVE seq as
(SELECT 1 as new_id
 UNION
 SELECT new_id + 1
 FROM seq
 WHERE new_id < (SELECT MAX(customer_id) FROM Customers)
)


SELECT new_id AS ids
FROM seq
WHERE new_id NOT IN(select customer_id FROM Customers)