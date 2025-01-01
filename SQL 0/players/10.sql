SELECT COUNT(DISTINCT "birth_country") AS "Num"
FROM players
WHERE "birth_country" IS NOT NULL
ORDER BY "birth_country"
