SELECT "name", ROUND(avg("salary"), 2) as "average salary"
FROM salaries
JOIN teams ON teams.id = salaries.team_id
WHERE salaries.year = 2001
GROUP BY "name"
ORDER BY "average salary" ASC
LIMIT 5;
