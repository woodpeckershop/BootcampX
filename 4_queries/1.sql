SELECT  count (assistance_requests.*),teachers.name
FROM assistance_requests join teachers on teacher_id=teachers.id
where name = 'Waylon Boehm' 
GROUP BY teachers.name;