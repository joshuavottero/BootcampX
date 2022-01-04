SELECT students.name as student, avg(assignment_submissions.duration) as average_assingment_duration, avg(assignments.duration) as average_estimated_duration
FROM students
JOIN assignment_submissions ON students.id = assignment_submissions.student_id
JOIN assignments ON assignments.id = assignment_submissions.assignment_id
WHERE end_date IS NULL
GROUP BY students.name
HAVING avg(assignments.duration) > avg(assignment_submissions.duration)
ORDER BY average_assingment_duration;
