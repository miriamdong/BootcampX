SELECT day, SUM(id) as total_assignments
FROM assignments
GROUP BY day
ORDER BY day;