CREATE TABLE donuts (
    "id" INTEGER,
    "gluten" TEXT,
    "price" INTEGER,
    PRIMARY KEY("id")
);

CREATE TABLE ing (
    "don_id" INTEGER,
    "flour" TEXT,
    "oil" TEXT,
    "butter" TEXT,
    "sugar" TEXT,
    PRIMARY KEY("don_id")
    FOREIGN KEY("don_id") REFERENCES "users"("id")
);

CREATE TABLE customers (
    "id" INTEGER,
    "first_name" TEXT,
    "last_name" TEXT,
    "order_hist" TEXT,
    PRIMARY KEY("id")
);

CREATE TABLE orders (
    "id" INTEGER,
    "donuts" TEXT,
    "cus_id" INTEGER,
    PRIMARY KEY("id"),
    FOREIGN KEY("cus_id") REFERENCES "customers"("id")
);
