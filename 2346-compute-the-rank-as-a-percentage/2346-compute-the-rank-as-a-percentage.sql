# Write your MySQL query statement below
WITH A AS (SELECT student_id, department_id,mark, rank() over(partition by department_id order by mark desc) as rank1,count(*) over(partition by department_id) as count1
FROM Students)

SELECT student_id, department_id,IF( count1 = 1,0,ROUND((rank1-1)*100/(count1-1),2)) as percentage
FROM A