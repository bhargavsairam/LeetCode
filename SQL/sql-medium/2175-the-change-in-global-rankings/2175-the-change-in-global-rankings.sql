# Write your MySQL query statement below
WITH A AS (SELECT t.team_id, t.name, t.points + p.points_change as changed_points,CAST(row_number() OVER(order by t.points desc, t.name ASC) AS SIGNED) as rank1 
FROM TeamPoints t, PointsChange p
WHERE t.team_id = p.team_id), B as (SELECT a.team_id, a.name, a.rank1,CAST(row_number() over(order by a.changed_points DESC, a.name ASC) AS SIGNED) as new_rank
FROM A a)

SELECT b.team_id, b.name, -b.new_rank +b.rank1  as rank_diff 
FROM B b