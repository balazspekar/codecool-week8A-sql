SELECT FIRST_NAME, LAST_NAME, SALARY
FROM employees
WHERE SALARY > (
          SELECT salary
	FROM employees
	WHERE last_name = "Bull" 
          );
		  
SELECT first_name, last_name
FROM employees
WHERE department_id = (
         SELECT department_id
	FROM departments
	WHERE department_name = "IT"
          )
		  
SELECT first_name, last_name
FROM employees
WHERE job_id IN(
	SELECT job_id
	FROM jobs
	WHERE job_title LIKE "%manager%"
          )
		  
SELECT first_name, last_name
FROM employees
WHERE salary > (
    SELECT AVG(salary)
    FROM employees
     )
	 
SELECT first_name, last_name, salary
FROM employees
WHERE salary IN(
    SELECT MIN_SALARY FROM jobs
    )
	
SELECT employees.employee_id, employees.first_name, employees.last_name, (SELECT departments.department_name FROM departments WHERE departments.DEPARTMENT_ID = employees.DEPARTMENT_ID) AS DepartmentNames
FROM employees

SELECT * FROM employees ORDER BY employee_id DESC LIMIT 10

