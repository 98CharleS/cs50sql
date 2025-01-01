CREATE TABLE users (
    "id" INTEGER,
    "first_name" TEXT,
    "last_name" TEXT,
    "username" TEXT,
    "password" TEXT,
    PRIMARY KEY("id")
);

CREATE TABLE schools (
    "id" INTEGER,
    "name" TEXT,
    "type" TEXT,
    "location" TEXT,
    "year" INTEGER,
    PRIMARY KEY("id")
);

CREATE TABLE companies (
    "id" INTEGER,
    "name" TEXT,
    "type" TEXT,
    "location" TEXT,
    PRIMARY KEY("id")
);

CREATE TABLE conn_ppl (
    "p1" INTEGER,
    "p2" INTEGER,
    FOREIGN KEY("p1") REFERENCES "users"("id"),
    FOREIGN KEY("p2") REFERENCES "users"("id")
);

CREATE TABLE conn_schools (
    "user_id" INTEGER,
    "schoold_id" INTEGER,
    "start_date" TEXT,
    "end_date" TEXT,
    "degree" TEXT,
    FOREIGN KEY("user_id") REFERENCES "users"("id"),
    FOREIGN KEY("schoold_id") REFERENCES "schools"("id")
);

CREATE TABLE conn_comp (
    "user_id" INTEGER,
    "comp_id" INTEGER,
    "start_date" TEXT,
    "end_date" TEXT,
    "title" TEXT,
    FOREIGN KEY("user_id") REFERENCES "users"("id"),
    FOREIGN KEY("comp_id") REFERENCES "companies"("id")
);
