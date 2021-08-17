select distinct teachers.name, cohorts.name
from teachers 
join assistance_requests on teachers.id = teacher_id
join students on students.id = student_id
join cohorts on cohorts.id = cohort_id
where cohorts.name =  'JUL02' 
-- group by cohorts.name 

ORDER by teachers.name