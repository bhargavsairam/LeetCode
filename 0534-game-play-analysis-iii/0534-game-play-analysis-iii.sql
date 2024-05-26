# Write your MySQL query statement below
SELECT player_id, event_date, SUM(games_played) over(partition BY player_id order by event_date) as games_played_so_far
FROM Activity
