# Write your MySQL query statement below
SELECT id , company, salary FROM
(SELECT *, ROW_NUMBER() over (partition by company order by salary asc, id asc) as row_num_asc,
ROW_NUMBER() over (partition by company order by salary desc ,id desc) as row_num_desc
FROM Employee) q
WHERE row_num_asc between row_num_desc - 1 and row_num_desc + 1
order by company, salary


