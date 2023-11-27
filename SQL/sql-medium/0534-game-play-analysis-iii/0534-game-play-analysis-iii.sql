# Write your MySQL query statement below
SELECT player_id, event_date, sum(games_played) over(partition by player_id order by event_date asc) as games_played_so_far
FROM Activity
GROUP BY player_id, event_date 
order By player_id, event_date asc