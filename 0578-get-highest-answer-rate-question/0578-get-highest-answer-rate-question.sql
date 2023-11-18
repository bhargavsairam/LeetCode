# Write your MySQL query statement below

SELECT question_id as survey_log
FROM SurveyLog
Group By question_id
ORDER BY SUM(IF(action ='answer',1,0))/ SUM(IF(action = 'show',1,0)) DESC, question_id ASC
LIMIT 1