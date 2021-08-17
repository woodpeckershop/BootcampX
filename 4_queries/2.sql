SELECT  count (assistance_requests.*),students.name
FROM assistance_requests join students on student_id=students.id
where name = 'Elliot Dickinson' 
GROUP BY students.name;