# Write your MySQL query statement below
SELECT distinct p1.account_id
FROM LogInfo p1
JOIN LogInfo p2
ON p1.account_id = p2.account_id
AND p1.ip_address <> p2.ip_address
AND((p1.login between p2.login AND p2.logout) OR (p2.login between p1.login AND p1.login))