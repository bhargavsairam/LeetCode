# Write your MySQL query statement below
SELECT student_id, min(course_id) as course_id, grade
FROM Enrollments 
WHERE(student_id,grade) IN (
    SELECT student_id, max(grade) as grade
FROM Enrollments
GROUP BY student_id
) 
GROUP BY student_id
ORDER BY student_id 