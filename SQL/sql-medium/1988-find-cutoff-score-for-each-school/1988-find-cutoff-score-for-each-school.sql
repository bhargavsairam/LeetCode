# Write your MySQL query statement below
SELECT s.school_id, IFNULL(MIN(e.score),-1) as score
FROM Schools s LEFT JOIN Exam e
ON s.capacity >= e.student_count
GROUP BY s.school_id