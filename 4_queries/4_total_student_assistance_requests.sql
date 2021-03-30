SELECT COUNT(*) as total_assistances, students.name as name
FROM assistance_requests
JOIN students ON students.id = student_id
Where students.name = 'Elliot Dickinson'
GROUP BY students.name;