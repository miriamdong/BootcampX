SELECT students.name as Students, AVG(assignment_submissions.duration) as average_assignment_duration
FROM Assignment_submissions
JOIN students ON students.id = Assignment_submissions.student_id
WHERE students.end_date IS NULL
GROUP BY students.name
ORDER BY average_assignment_duration DESC;