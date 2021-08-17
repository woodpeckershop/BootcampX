select assignments.id, name,assignments.duration,assignments.chapter,count(assistance_requests.assignment_id)
from assignments join assistance_requests on assignment_id=assignments.id
group by assignments.id
ORDER BY count(assistance_requests.assignment_id)

-- SELECT assignments.id, name, day, chapter, count(assistance_requests) as total_requests
-- FROM assignments
-- JOIN assistance_requests ON assignments.id = assignment_id
-- GROUP BY assignments.id
-- ORDER BY total_requests DESC;