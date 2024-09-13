-- Joins

SELECT *
FROM employee_demographics;

SELECT *
FROM employee_salary;

SELECT dem. employee_id, age, occupation
FROM employee_demographics AS dem
INNER JOIN employee_salary AS sal
	ON dem.employee_id = sal.employee_id
;


-- Outer Joins

SELECT *
FROM employee_demographics AS dem
right JOIN employee_salary AS sal
	ON dem.employee_id = sal.employee_id
;

-- Self Join

select EMP1.employee_id AS emp_santa,
EMP1.first_name AS first_name_santa,
EMP1.last_name as last_name_santa,
EMP2.employee_id AS emp_santa,
EMP2.first_name AS first_name_santa,
EMP2.last_name AS last_name_santa
from employee_salary EMP1
join employee_salary EMP2
	ON EMP1.employee_id +1= emp2.employee_id
;


-- Joining multiple tables together

SELECT *
FROM employee_demographics AS dem
INNER JOIN employee_salary AS sal
	ON dem.employee_id = sal.employee_id
INNER JOIN parks_departments pd
	ON 	sal.dept_id = pd.department_id
;
    
SELECT *
FROM parks_departments;