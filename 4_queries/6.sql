-- with average as(
--   select cohorts.name as name, avg(completed_at-started_at) as average_time
--   from assistance_requests 
--   join students on student_id = students.id
--   join cohorts on cohort_id = cohorts.id group by cohorts.name
--   ) 
-- select name from average

  SELECT cohorts.name, avg(completed_at - started_at) as average_assistance_time
FROM assistance_requests 
JOIN students ON students.id = assistance_requests.student_id
JOIN cohorts ON cohorts.id = cohort_id
GROUP BY cohorts.name
ORDER BY average_assistance_time DESC
LIMIT 1;


