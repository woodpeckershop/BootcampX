select cohorts.name, avg(completed_at-started_at) as average_assistance_time
from assistance_requests 
join students on student_id = students.id
join cohorts on cohort_id = cohorts.id
group by cohorts.name
ORDER BY average_assistance_time;
