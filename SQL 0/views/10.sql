SELECT "english_title" AS "Title", "entropy"
FROM "views"
WHERE "entropy" < 7
ORDER BY "entropy" DESC
LIMIT 3;
