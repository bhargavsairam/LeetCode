# Write your MySQL query statement below
WITH CTE1 AS (select t.user_id, count(t.contact_email) as trusted_contacts_cnt
FROM Customers as c
JOIN Contacts as t
on c.customer_id = t.user_id
WHERE t.contact_email IN (select email from customers)
GROUP BY user_id),
CTE2 AS (SELECT c.customer_id, c.customer_name ,IFNULL(count(t.contact_email),0) as contacts_cnt
         FROM Contacts t
         RIGHT JOIN 
         Customers c on c.customer_id = t.user_id
         GROUP BY c.customer_id,c.customer_name )


SELECT i.invoice_id, q.customer_name, price,q.contacts_cnt,IFNULL(a.trusted_contacts_cnt,0) as trusted_contacts_cnt
FROM Invoices i
LEFT JOIN CTE2 as q
ON i.user_id = q.customer_id
LEFT JOIN CTE1 as a
ON i.user_id = a.user_id
ORDER BY i.invoice_id