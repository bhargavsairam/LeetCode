# Write your MySQL query statement below


SELECT b.book_id, b.name
FROM Books b
LEFT JOIN (SELECT book_id, SUM(quantity)  as total_sum
          FROM Orders
          WHERE dispatch_date >'2018-06-23'
          GROUP BY book_id)q
ON q.book_id = b.book_id
WHERE b.available_from <'2019-05-23'
AND (q.total_sum IS NULL OR q.total_sum <10)