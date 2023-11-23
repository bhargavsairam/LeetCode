# Write your MySQL query statement below
SELECT person1, person2, sum(call_count) as call_count, sum(total_duration) as total_duration
FROM
(SELECT from_id as person1, to_id as person2, count(*) as call_count, sum(duration) as total_duration
FROM 
Calls
WHERE from_id<to_id
GROUP BY person1,person2
UNION
SELECT to_id as person1, from_id as person2, count(*) as call_count, sum(duration) as total_duration
FROM 
Calls
WHERE from_id > to_id
GROUP BY person1,person2)q
GROUP BY person1, person2