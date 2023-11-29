# Write your MySQL query statement below
SELECT p.salesperson_id,p.name ,IFNULL(sum(s.price),0) as total
FROM Salesperson p 
LEFT JOIN Customer c  ON p.salesperson_id = c.salesperson_id
LEFT JOIN Sales s ON c.customer_id = s.customer_id
GROUP BY p.salesperson_id