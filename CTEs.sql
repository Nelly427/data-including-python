use companydb;
WITH EmployeeSalaries AS(
SELECT
employeeid,
firstname,
lastname,
salary,
departmentid
FROM employees
WHERE salary > 50000 -- Additional filter
)
SELECT
departmentid,
AVG(salary) AS avg_salary
FROM EmployeeSalaries
GROUP BY departmentid;
