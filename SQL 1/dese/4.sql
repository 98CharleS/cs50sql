SELECT "city", COUNT("city") as "Number"
FROM schools
WHERE "type" = "Public School"
GROUP BY "city"
ORDER BY "Number" DESC, "city" ASC
LIMIT 10;
