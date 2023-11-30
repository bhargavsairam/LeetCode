# Write your MySQL query statement below
WITH CTE AS (SELECT voter, candidate, 1/(count(voter) over(partition by voter)) as vote_share FROM
Votes),
CTE2 AS (SELECT candidate, sum(vote_share) as total_votes
FROM CTE
GROUP BY candidate
HAVING candidate is NOT NULL)

SELECT candidate FROM CTE2
WHERE total_votes = (select max(total_votes) from CTE2)
ORDER BY candidate