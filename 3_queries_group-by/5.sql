SELECT students.name, AVG(assignment_submissions.duration), avg(assignments.duration)
FROM students join assignment_submissions on student_id = students.id
join assignments on assignment_id=assignments.id
WHERE end_date IS NULL
group by students.name
HAVING avg(assignment_submissions.duration) < avg(assignments.duration)
order by AVG(assignment_submissions.duration)
