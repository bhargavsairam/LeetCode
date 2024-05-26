# Write your MySQL query statement below
WITH A AS (SELECT candidateId, count(*) as max_count 
FROM Vote
GROUP BY candidateId
ORDER BY max_count DESC
LIMIT 1)
SELECT name
FROM Candidate
JOIN A 
ON A.candidateId = Candidate.id
