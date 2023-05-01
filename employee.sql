--find employee first and last names who live in calgary
SELECT first_name, last_name
FROM employee
WHERE city = 'Calgary'

--find birthdate of youngest employee
SELECT MAX(birth_date)
FROM employee

--find birthdate of oldest employee
SELECT MIN(birth_date)
FROM employee

--find everyone that reports to Nancy Edwards
SELECT employee_id
FROM employee
WHERE first_name = 'Nancy'
--determined that her id is 2
SELECT first_name, last_name
FROM employee
WHERE reports_to = 2

--count how many people live in Lethbridge
SELECT COUNT(*)
FROM employee
WHERE city = 'Lethbridge'