CREATE VIEW frequently_reviewed AS
SELECT l.id, property_type, host_name, COUNT(r.listing_id) AS "reviews"
FROM "listings" l
JOIN "reviews" r ON l.id = r.listing_id
GROUP BY l.id
ORDER BY "reviews" DESC, property_type DESC, host_name desc
LIMIT 100;
