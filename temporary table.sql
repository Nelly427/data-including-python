use companydb;

CREATE FUNCTION create1 (
    salary INT
)
RETURNS TABLE
AS
RETURN
    SELECT
        employeeid,
        firstname,
        salary,
    FROM
        employees
    WHERE
        salary=50000;
create temporary table nelly(
firstname varchar(100),
id int,
location varchar(100),
workplace varchar(100)
);

insert into nelly(fisrtname,id,location,workplace)values

