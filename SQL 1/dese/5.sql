SELECT "city", COUNT("city") as "Number"
FROM schools
WHERE "type" = "Public School"
GROUP BY "city"
HAVING "Number" <= 3
ORDER BY "Number" DESC, "city" ASC;
