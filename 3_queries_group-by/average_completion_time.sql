SELECT name as student, avg(assignment_submissions.duration) as average_assingment_duration
FROM students
JOIN assignment_submissions ON students.id = assignment_submissions.student_id
WHERE end_date IS NULL
GROUP BY name
ORDER BY average_assingment_duration DESC;



