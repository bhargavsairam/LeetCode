# Write your MySQL query statement below
WITH a as(SELECT gold_medal as user_id, contest_id FROM Contests
         UNION SELECT silver_medal as user_id, contest_id FROM Contests
         UNION SELECT bronze_medal as user_id, contest_id FROM Contests
          ),
     b as (SELECT user_id, contest_id, row_number() over (partition by user_id order by contest_id) as rank1
          FROM a),
    c as (SELECT distinct user_id FROM b 
          GROUP BY user_id,contest_id - rank1
          HAVING count(*) >=3
         UNION
         SELECT gold_medal as user_id
         FROM Contests
         GROUP BY gold_medal
         HAVING count(*) >=3)

SELECT u.name, u.mail
FROM Users u, c
WHERE c.user_id = u.user_id