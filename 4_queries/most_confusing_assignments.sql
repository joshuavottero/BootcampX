SELECT id, name, day, chapter, (SELECT COUNT(assistance_requests.*) 
FROM assistance_requests 
WHERE assignments.id = assistance_requests.assignment_id ) as total_requests
FROM assignments
ORDER BY total_requests DESC;

-- also works
-- SELECT assignments.id, name, day, chapter, count(assistance_requests) as total_requests
-- FROM assignments
-- JOIN assistance_requests ON assignments.id = assignment_id
-- GROUP BY assignments.id
-- ORDER BY total_requests DESC;