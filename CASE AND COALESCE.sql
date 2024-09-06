USE COMPANYdb;
SELECT
employeeid,
firstname,
lastname,
DepartmentID,
CASE departmentid
 WHEN 101 THEN 'HR'
 WHEN 102 THEN 'IT'
 WHEN 103 THEN 'FINANCE'
 ELSE 'other'
END AS departmentName
FROM employees;
SELECT
employeeid,
firstname,
lastname,
salary,
CASE
WHEN salary<50000 THEN 'Low'
WHEN salary BETWEEN   50000 AND 70000 THEN 'Medium'
ELSE 'High'
END AS salary_level
FROM employees;
SELECT
departmentid,
SUM(CASE
WHEN departmentid=101 THEN salary
ELSE 0
END) AS spent_101,

SUM(CASE
WHEN departmentid=103 THEN salary
ELSE 0
END) AS spent_103
FROM employees
GROUP BY departmentid;
alter table employees
add column phonenumber varchar(100);
SELECT employeeid,
firstname, 
lastname,
COALESCE(phonenumber,'No phone number') AS contact_number
FROM employees
Limit 5;

alter table employees
add  column email varchar(100); 
alter table employees
add column personal_email varchar(100);
SELECT employeeid,
firstname, 
lastname,
COALESCE(email,personal_email,'No email available') AS emailAddress
FROM employees;
alter table departments
add column phonenumber varchar(100);
alter table departments
add column email varchar(100);
SELECT
Departmentname,
CASE
WHEN departmentid=101 THEN coalesce(phonenumber,'No phone')
WHEN departmentid = 102 THEN coalesce(email,'No email')
else 'contact admin'
end as contact_info
FROM departments;

