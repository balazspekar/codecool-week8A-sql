SELECT job_id, COUNT(*) AS EmployeesWithThisJob
FROM employees
GROUP BY job_id;

SELECT manager_id, MIN(salary)
FROM employees
GROUP BY manager_id;

SELECT department_id, SUM(salary)
FROM employees
GROUP BY department_id;

SELECT job_id, AVG(salary) FROM employees
WHERE job_id != "IT_PROG"
GROUP BY job_id;

SELECT job_id, MAX(salary) AS MaxSalary
FROM employees
GROUP BY job_id
HAVING MaxSalary >= 4000

SELECT department_id, AVG(salary) AS AvgSalary
FROM employees
GROUP BY department_id
HAVING ??? OKAY I’M STUCK WITH THIS FOR NOW

