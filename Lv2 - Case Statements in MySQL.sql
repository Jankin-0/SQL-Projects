-- Case Statements

SELECT first_name, 
last_name,
AGE,
CASE
	WHEN age <= 30 THEN 'Young'
    WHEN age BETWEEN 31 and 50 THEN 'old'
    WHEN age >= 50 THEN "On Death's Door"
END AS Age_Bracket
;

-- Pay Increase and Bonus
-- < 50000 = 5%
-- > 50000 = 7%
-- Finance = 10% Bonus

Select first_name, last_name, salary,
CASE 
	WHEN salary < 50000 THEN salary + (salary * 0.05)
    WHEN salary > 50000 THEN salary + (salary * 0.07)
END AS New_Salary,
CASE
	WHEN dept_id = 6 THEN salary *.10
END AS Bonus
From employee_salary;


SELECT *
FROM employee_salary;
SELECT *
FROM parks_departments;