-- CREATE TABLE
 CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    product_id INT,
    quantity INT,
    price INT
);

-- insert sample data
INSERT INTO orders (
    order_id, product_id, quantity, price)
    VALUES (1, 1, 200, 500),
    (2, 2, 100, 450),
    (3, 3, 10, 600),
    (4, 1, 30, 500),
    (5, 5, 60, 250);

-- Retrieve all records
SELECT * from orders;
-- +----------+------------+----------+-------+
-- | order_id | product_id | quantity | price |
-- +----------+------------+----------+-------+
-- |        1 |          1 |      200 |   500 |
-- |        2 |          2 |      100 |   450 |
-- |        3 |          3 |       10 |   600 |
-- |        4 |          1 |       30 |   500 |
-- |        5 |          5 |       60 |   250 |
-- +----------+------------+----------+-------+
-- 5 rows in set (0.0008 sec)


-- Retrieve total quantity of products sold
 SELECT SUM(quantity) AS 'TOTAL PRODUCTS SOLD' from orders;
-- +---------------------+
-- | TOTAL PRODUCTS SOLD |
-- +---------------------+
-- |                 400 |
-- +---------------------+
-- 1 row in set (0.0008 sec)


-- The avarage price of products
 SELECT AVG(price) AS 'AVERAGE PRICE' FROM orders;
-- +---------------+
-- | AVERAGE PRICE |
-- +---------------+
-- |      460.0000 |
-- +---------------+
-- 1 row in set (0.0268 sec)

-- Product with the highest price
 SELECT MAX(price) FROM orders;
-- +------------+
-- | MAX(price) |
-- +------------+
-- |        600 |
-- +------------+
-- 1 row in set (0.0012 sec)