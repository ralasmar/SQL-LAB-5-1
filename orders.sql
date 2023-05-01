--create table
CREATE TABLE orders(
    order_id SERIAL PRIMARY KEY,
    person_id SERIAL,
    product_name TEXT,
    product_price FLOAT,
    quantity INTEGER
);

INSERT INTO orders(product_name, product_price, quantity)
VALUES('cheeseburger', 8.95, 1),
        ('fries', 4.50, 1),
        ('ribs', 14.50, 2),
        ('chicken', 12.50, 3),
        ('omelet', 11.99, 1),
        ('salad', 7.50, 4)

--select all from orders table
SELECT *
FROM orders

--calculate total number of products ordered
SELECT SUM(quantity) 
FROM orders

--calculate total order price
SELECT SUM(product_price)
FROM orders

--calculate total order price by a single person_id
SELECT SUM(product_price)
FROM orders
WHERE person_id = 1
