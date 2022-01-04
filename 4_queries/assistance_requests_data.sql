SELECT teachers.name as teacher, students.name as student, assignments.name as assignment, (completed_at - started_at)s as duration
FROM assistance_requests
join teachers ON teacher_id = teachers.id 
join students ON student_id = students.id 
join assignments ON assignment_id = assignments.id 
ORDER BY duration


