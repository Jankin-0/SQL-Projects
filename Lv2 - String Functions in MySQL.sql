-- String Functions

SELECT length('SKYFALL');

SELECT first_name, length(first_name)
FROM employee_demographics
ORDER BY 2;

SELECT upper('SKYFALL');
SELECT lower('SKYFALL');

SELECT first_name, UPPER(first_name)
FROM employee_demographics
;

SELECT RTRIM('         SKYFALL');


SELECT first_name, 
LEFT(first_name, 4),
right(first_name, 4),
substring(first_name,3,2),
birth_date,
substring(birth_date,6,2) AS birth_date
FROM employee_demographics;


select first_name, REPLACE(first_name, 'a', 'z')
FROM employee_demographics;

SELECT locate('x','Alexander');

select first_name, last_name,
CONCAT(first_name,'', last_name) AS full_name
FROM employee_demographics;