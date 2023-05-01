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
    ('Leah', 27, 168, 'Milwaukee', 'blue'),
    ('Mallika',26, 164, 'Chicago', 'purple');

--select and order by height
--tallest to shortest
SELECT *
FROM person
ORDER BY height DESC;

--shortest to tallest
SELECT *
FROM person
ORDER BY height;


--select by age, sort oldest to youngest
SELECT *
FROM person
ORDER BY age DESC

--select all the people older than 20
SELECT *
FROM person
WHERE age > 20

--select people who are exactly 18
SELECT *
FROM person
WHERE age = 18

--select people who are less than 20 or older than 30
SELECT *
FROM person
WHERE age<20 OR age>30

--select everyone who is not 27
SELECT *
FROM person
WHERE age <> 27

--select all people whose favorite color is not red
SELECT *
FROM person
WHERE favorite_color <> 'red'

--select all people whose favorite color is not red or blue
SELECT * 
FROM person
WHERE favorite_color <> 'red' AND favorite_color<> 'blue'

--select all people whose favorite color is orange or green
SELECT *
FROM person
WHERE favorite_color = 'green' OR favorite_color = 'orange'

--select people whose favorite color is orange, green, or blue
SELECT *
FROM person
WHERE favorite_color IN ('orange', 'green', 'blue')

--select peopel whose favorite color is yellow or purple
SELECT *
FROM person
WHERE favorite_color IN ('yellow', 'purple')


