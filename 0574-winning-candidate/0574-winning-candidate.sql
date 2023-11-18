# Write your MySQL query statement below
SELECT c.name 
FROM Candidate as c,(select candidateId, count(*) as total_votes 
FROM vote 
GROUP BY candidateId
ORDER BY total_votes desc
LIMIT 1)q
WHERE c.id = q.candidateId