# Write your MySQL query statement below

SELECT f.flight_id, IFNULL(IF(count1>capacity, capacity,count1),0) as booked_cnt,
IF(count1>capacity, count1-capacity,0) as waitlist_cnt
FROM Flights f
LEFT JOIN
(SELECT flight_id,count(passenger_id) as count1
FROM Passengers
GROUP BY flight_id)q
using (flight_id)
order by f.flight_id