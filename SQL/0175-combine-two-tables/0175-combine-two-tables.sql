# Write your MySQL query statement below
SELECT firstName, lastName, city, state from Person P left join  Address A on p.personId = A.personID