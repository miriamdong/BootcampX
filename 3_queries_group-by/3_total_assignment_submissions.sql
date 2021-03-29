SELECT cohorts.name as cohort, COUNT(Assignment_submissions.*) as total_submissions
FROM cohorts
JOIN students ON cohort_id = cohorts.id
JOIN Assignment_submissions ON students.id = Assignment_submissions.student_id
GROUP BY cohorts.name
ORDER BY total_submissions DESC;