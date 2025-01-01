SELECT year, HR
FROM performances
WHERE player_id =
    (
    SELECT id
    FROM players
    WHERE birth_year = 1969 AND "last_name" = "Griffey"
    )
ORDER BY "year" DESC;
