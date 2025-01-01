SELECT SUM(H) AS "Total hits", name
FROM performances
JOIN teams ON teams.id = performances.team_id
WHERE performances.year = 2001
GROUP BY name
ORDER BY "Total hits" DESC
LIMIT 5
