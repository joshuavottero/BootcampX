SELECT cohorts.name as cohort, count(assignment_submissions.*) as total_submissions
FROM cohorts
join students ON cohorts.id = students.cohort_id
join assignment_submissions ON assignment_submissions.student_id = students.id
GROUP BY cohorts.name
ORDER By count(assignment_submissions.*) DESC;