Use Companydb;
SELECT
employeeid,
firstname,
lastname,
departmentid,
ROW_NUMBER() OVER (PARTITION BY departmentid ORDER BY lastname) AS row_num
FROM employees;
update employees set departmentid=102 where employeeid=11;
insert into employees(employeeid,firstname,lastname,departmentid,hiredate,salary,phonenumber)values
(15,"vivian","akinyi",102,"2024/12/30","5000","0725599044"),
(14,"caro","hellen","102","2024/12/24","7000","0788345444");
set SQL_safe_updates =0;
update employees set salary =5000 where employeeid = 19 or 20;
SELECT
employeeid,
firstname,
lastname,
departmentid,
salary,
RANK() OVER  (PARTITION BY departmentid ORDER BY salary DESC) AS ranks
FROM employees;

update employees set Salary =5000 where employeeid = 18;
update employees set Salary =5000 where employeeid =19;
update employees
set salary = round(rand()*(100000),2);
SELECT
employeeid,
firstname,
lastname,
departmentid,
salary,
SUM(Salary) OVER (PARTITION BY departmentid) AS total_salary
FROM employees;
SELECT
employeeid,
firstname,
lastname,
departmentid,
salary,
AVG(salary) OVER (ORDER BY employeeid ROWS BETWEEN 2 PRECEDING AND
CURRENT ROW) AS moving_avg
FROM employees;

