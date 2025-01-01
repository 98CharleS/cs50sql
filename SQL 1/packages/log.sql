
-- *** The Lost Letter ***
SELECT "address_id", "action", "timestamp"
FROM "scans"
WHERE "package_id" = (
    SELECT "id"
    FROM "packages"
    WHERE "from_address_id" = (
        SELECT id
        FROM addresses
        WHERE address = "900 Somerville Avenue"
    )
);

SELECT "address", "type"
FROM "addresses"
WHERE "id" = "854";

-- *** The Devious Delivery ***


SELECT "address_id", "action", "timestamp", "package_id"
FROM "scans"
WHERE "package_id" = (
    SELECT "id"
    FROM "packages"
    WHERE "from_address_id" IS NULL
);

SELECT "address", "type"
FROM "addresses"
WHERE "id" = "348";

SELECT contents
FROM packages
WHERE id = 5098;

-- *** The Forgotten Gift ***

SELECT "action", "timestamp", "driver_id", "package_id"
FROM "scans"
WHERE "package_id" = (
    SELECT "id"
    FROM "packages"
    WHERE "from_address_id" = (
        SELECT "id"
        FROM "addresses"
        WHERE "address" = "109 Tileston Street"
    )
    AND "to_address_id" = (
        SELECT "id"
        FROM "addresses"
        WHERE "address" = "728 Maple Place"
    )
);

SELECT "name"
FROM "drivers"
WHERE "id" = "17";

SELECT contents
FROM packages
WHERE id = 9523;
