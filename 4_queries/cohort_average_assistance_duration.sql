-- SELECT avg((SELECT sum(completed_at - started_at)
--   FROM assistance_requests 
--   JOIN students ON student_id = students.id
--   JOIN cohorts ON cohort_id = cohorts.id 
--   GROUP BY cohorts.name)) as average_total_duration
-- FROM assistance_requests; 

SELECT avg(total_duration) as average_total_duration 
  FROM (SELECT cohorts.name as cohort, sum(completed_at - started_at) as total_duration
  FROM assistance_requests 
  JOIN students ON students.id = student_id
  JOIN cohorts ON cohorts.id = cohort_id 
  GROUP BY cohort
  ORDER by total_duration) as total_durations; 


