# Write your MySQL query statement below
select w2.id from weather w, weather w2 where datediff(w2.recordDate,w.recordDate) = 1 and w2.temperature - w.temperature >0 