SELECT "name"
FROM schools
WHERE "district_id" in (
    SELECT "id"
    FROM "districts"
    WHERE "name" = "Cambridge"
);
