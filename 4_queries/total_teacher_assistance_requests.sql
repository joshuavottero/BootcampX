SELECT (SELECT count(id) 
FROM assistance_requests 
WHERE teacher_id = teachers.id) as total_assistances, name 
FROM teachers
WHERE teachers.name = 'Waylon Boehm';

-- also works
-- SELECT count(assistance_requests.*) as total_assistances, teachers.name
-- FROM assistance_requests
-- JOIN teachers ON teachers.id = teacher_id
-- WHERE name = 'Waylon Boehm'
-- GROUP BY teachers.name;