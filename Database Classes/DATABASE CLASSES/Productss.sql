DROP TABLE PRODUCTS_2;
CREATE TABLE IF NOT EXISTS PRODUCTS_2 (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    Order_date date,
    Sales integer
);

INSERT INTO PRODUCTS_2 (Order_date, Sales)
VALUES ('2021-01-01', 20),
       ('2021-01-02', 32),
       ('2021-02-08', 45),
       ('2021-02-04', 31),
       ('2021-03-21', 33),
       ('2021-03-06', 19),
       ('2021-04-07', 21),
       ('2021-04-22', 10);

-- Find monthly sales and sort it by descending order


