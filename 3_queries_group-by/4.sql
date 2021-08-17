SELECT students.name, AVG(duration)
FROM assignment_submissions join students on student_id = students.id
WHERE end_date IS NULL
GROUP BY students.name

ORDER BY AVG(duration) desc