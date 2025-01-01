CREATE VIEW "most_populated" AS
SELECT district, families, households, "population", male, "female"
from census
ORDER BY "population" DESC
