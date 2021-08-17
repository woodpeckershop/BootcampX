SELECT cohorts.name, count(assignment_submissions.* )
FROM cohorts Join students ON cohort_id=cohorts.id
join assignment_submissions on  student_id = students.id
group by cohorts.name
order by  count(assignment_submissions.* ) desc