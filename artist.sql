--add values to existing table
INSERT INTO artist(name)
VALUES('Indigo De Souza'),
        ('BoyGenius'),
        ('The Beths')


--select 10 artists in reverse alphabetical order
SELECT *
FROM artist
ORDER BY name DESC
LIMIT 10

--select 5 artists in alphabetical order
SELECT *
FROM artist
ORDER BY name
LIMIT 5

--select all artists that start with the word 'Black'
SELECT *
FROM artist
WHERE name
LIKE 'Black%' 

--select all artists that contain the word 'Black'
SELECT *
FROM artist
WHERE name
LIKE '%Black%'
