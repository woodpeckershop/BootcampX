SELECT teachers.name, students.name, assignments.name, (completed_at-started_at) as duration
from assistance_requests 
join students on student_id=students.id
join teachers on teacher_id=teachers.id
join assignments on assignment_id=assignments.id
order by duration