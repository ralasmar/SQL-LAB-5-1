-- create table
CREATE TABLE person(
    id SERIAL PRIMARY KEY,
    name TEXT,
    age INTEGER,
    height INTEGER,
    city TEXT,
    favorite_color TEXT
);

-- add info into database
INSERT INTO person(name, age, height, city, favorite_color)
VALUES('Rola', 26, 163, 'Minneapolis', 'green'),
    ('Lara', 25, 166, 'Berlin', 'pink'),
    ('Shivani', 24, 158, 'Las Vegas', 'brown'),
    ('Leah', 27 168, 'Milwaukee', 'blue'),
    ('Mallika',26, 164, 'Chicago', 'purple');

--select by height
SELECT height
FROM person
ORDER BY height;
