SELECT DISTINCT DEPARTMENT_ID
FROM employees;

SELECT * FROM employees
ORDER BY first_name DESC;

SELECT SUM(salary)
FROM employees;

SELECT MIN(salary) AS MinSalary, MAX(salary) AS MaxSalary
FROM employees;

SELECT AVG(salary) AS AverageSalary, COUNT(employee_id) as NumOfEmployees
FROM employees;

SELECT COUNT(DISTINCT(job_id))
FROM employees;

SELECT UPPER(first_name)
FROM employees;

SELECT SUBSTRING(first_name, 1, 3)
FROM employees;

SELECT CONCAT(first_name, " ", last_name) AS JominoseguKonkatenalas
FROM employees;

SELECT TRIM(first_name)
FROM employees;

SELECT first_name, last_name, LENGTH(first_name) AS FN_Length, LENGTH(last_name) AS LN_Length
FROM employees;

SELECT * FROM employees
LIMIT 10;