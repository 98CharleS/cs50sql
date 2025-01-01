CREATE TABLE passengers (
    "id" INTEGER,
    "first_name" TEXT,
    "last_name" TEXT,
    "age" INTEGER,
    PRIMARY KEY("id")
);

CREATE TABLE check_ins (
    "id" INTEGER,
    "passenger_id" INTEGER,
    "date" TEXT,
    "flights_id" INTEGER,
    PRIMARY KEY("id"),
    FOREIGN KEY("passenger_id") REFERENCES "passengers"("id"),
    FOREIGN KEY("flights_id") REFERENCES "flights"("id")
);

CREATE TABLE airlanes (
    "id" INTEGER,
    "name" TEXT,
    "concourse" TEXT,
    PRIMARY KEY("id")
);

CREATE TABLE flights (
    "id" INTEGER,
    "number" INTEGER,
    "airlanes_id" INTEGER,
    "deport" TEXT,
    "heading" TEXT,
    "departure" TEXT,
    "arrival" TEXT,
    PRIMARY KEY("id"),
    FOREIGN KEY("airlanes_id") REFERENCES "airlanes"("id")
);

