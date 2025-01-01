CREATE VIEW available AS
SELECT l.id, property_type, host_name, a."date"
FROM "listings" l
JOIN "availabilities" a ON l.id = a.listing_id
WHERE "a"."available" = "TRUE"
