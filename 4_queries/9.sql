with average as (
  select sum(completed_at-started_at) as total_duration 
  from assistance_requests 
  join students on student_id = students.id
  join cohorts on cohort_id = cohorts.id
  group by cohorts.name
  ORDER BY total_duration 
  )
select avg(total_duration)
from average 