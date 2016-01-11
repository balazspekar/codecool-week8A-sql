SELECT first_name, last_name, salary, department_id
FROM employees
WHERE department_id = 30
OR department_id = 100
AND salary NOT BETWEEN 10000 AND 15000;

SELECT first_name, last_name, hire_date FROM employees
WHERE YEAR(hire_date) = "1987";

SELECT first_name
FROM employees
WHERE first_name LIKE '%c%'
AND FIRST_NAME LIKE '%b%';

SELECT employees.last_name, employees.salary, jobs.job_title, employees.job_id, jobs.job_id 
FROM employees, jobs
WHERE employees.job_id = jobs.job_id
AND jobs.job_title = "Programmer"
OR jobs.job_title = "Shipping Clerk"
AND employees.salary != 4500
AND employees.salary != 10000
AND employees.salary != 15000;

SELECT * FROM employees
WHERE last_name LIKE "KING"
OR last_name LIKE "FORD"
OR last_name LIKE "SCOTT"
OR last_name LIKE "BLAKE";

