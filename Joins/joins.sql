SELECT location_id, street_address, state_province, city, country_id FROM locations
NATURAL JOIN countries;

SELECT employees.first_name, employees.last_name, departments.DEPARTMENT_ID, departments.department_name 
FROM employees, departments
WHERE employees.DEPARTMENT_ID = departments.DEPARTMENT_ID;

SELECT employees.first_name, employees.last_name, jobs.JOB_TITLE, employees.DEPARTMENT_ID, departments.DEPARTMENT_NAME, locations.CITY
FROM employees, departments, jobs, locations
WHERE employees.JOB_ID = jobs.JOB_ID
AND employees.DEPARTMENT_ID = departments.DEPARTMENT_ID
AND departments.LOCATION_ID = locations.LOCATION_ID
AND locations.CITY = "London"

SELECT departments.department_name, COUNT(employees.FIRST_NAME) AS ThisManyPeople
FROM departments, employees
WHERE employees.DEPARTMENT_ID = departments.DEPARTMENT_ID
GROUP BY departments.DEPARTMENT_NAME;

SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date > (
    SELECT hire_date
    FROM employees
    WHERE LAST_NAME = "Jones"
    )

