# Write your MySQL query statement below

WITH A AS(SELECT b.bus_id, b.arrival_time,IFNULL(lag(b.arrival_time) over(order by arrival_time),0) as lag_arrival
FROM Buses b)

SELECT A.bus_id, count(p.passenger_id) as passengers_cnt
FROM A LEFT JOIN Passengers p
ON A.arrival_time >= p.arrival_time AND A.lag_arrival<p.arrival_time
GROUP BY A.bus_id
ORDER BY 1