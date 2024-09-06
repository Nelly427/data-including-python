use companydb;
SELECT distinct
employeeid,
TRIM(firstname) AS firstname,
TRIM(lastname) AS lastname
FROM employees;
