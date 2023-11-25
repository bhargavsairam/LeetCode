# Write your MySQL query statement below

WITH A AS(SELECT platform, experiment_name
              FROM (SELECT 'IOS' AS platform UNION SELECT 'Android' UNION SELECT 'Web') E1 
                   CROSS JOIN
                   (SELECT 'Programming' AS experiment_name UNION SELECT 'Sports' UNION SELECT 'Reading') E2)


SELECT A.platform, A.experiment_name, IFNULL(count(e.Experiment_id),0) AS num_experiments FROM A 
LEFT JOIN Experiments e
ON A.platform = e.platform and A.experiment_name = e.experiment_name
GROUP BY A.platform, A.experiment_name
ORDER BY A.platform