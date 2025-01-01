CREATE VIEW june_vacancies AS
SELECT l.id, l.property_type, l.host_name,
COUNT("a"."available") AS "days_vacant"
FROM "listings" l
JOIN "availabilities" a ON l.id = a.listing_id
WHERE "a"."date" LIKE "%2023-06-%" AND a.available = "TRUE"
GROUP BY l.id
ORDER BY "reviews" DESC, property_type DESC, host_name desc
