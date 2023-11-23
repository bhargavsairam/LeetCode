# Write your MySQL query statement below
SELECT player_id,  player_name,
SUM(player_id = c.Wimbledon) + SUM(player_id = c.Fr_open) + SUM(player_id = c.US_open) + SUM(player_id = c.Au_open) as grand_slams_count
FROM Players JOIN Championships c
ON player_id = Wimbledon OR player_id = Fr_open OR player_id = US_open OR player_id = Au_open
GROUP BY player_id