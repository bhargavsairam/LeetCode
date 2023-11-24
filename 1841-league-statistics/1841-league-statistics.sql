# Write your MySQL query statement below
WITH a as (select home_team_id, home_team_goals as home, away_team_goals as away from matches
     union all
     select away_team_id as home_team_id, away_team_goals as home, home_team_goals as away from matches
	 )
SELECT t.team_name,count(*) as matches_played,
SUM(CASE WHEN home> away then 3 WHEN home = away then 1 else 0 end) as points,
SUM(home) as goal_for, sum(away) as goal_against, SUM(home - away) as goal_diff
           FROM a, Teams t
           WHERE t.team_id = a.home_team_id
          GROUP BY t.team_id
          ORDER BY points DESC, goal_diff DESC, team_name


