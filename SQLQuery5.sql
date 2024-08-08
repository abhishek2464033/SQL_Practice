--concept of joins in SQL 
-- inner join, left join, right join, full join and self join
select * from domain;
select * from cars;

-- INNER JOIN

select EMP_ID, EMP_NAME, EMP_CITY, EMP_DOB, EMP_SKILLS, EMP_CAR, Car_Name, Car_Model 
from domain INNER JOIN cars ON domain.EMP_CAR = cars.Car_Number;

-- JOIN AND INNER JOIN will give same result as INNER is not mandatory to mention its by default.
-- The INNER JOIN keyword selects records that have matching values in both tables. -> Definition

-- LEFT JOIN

select EMP_ID, EMP_NAME, EMP_CITY, EMP_DOB, EMP_SKILLS, EMP_CAR, Car_Name, Car_Model
from domain LEFT JOIN cars ON domain.EMP_CAR = cars.Car_Number;

--The LEFT JOIN keyword returns all records from the left table, even if there are no matches in the right table
--The LEFT JOIN keyword returns all records from the left table, and the matching records from the right table -> Definition

--RIGHT JOIN

select EMP_ID, EMP_NAME, EMP_CITY, EMP_DOB, EMP_SKILLS, EMP_CAR, Car_Name, Car_Model
from domain RIGHT JOIN cars ON domain.EMP_CAR = cars.Car_Number;

--The RIGHT JOIN keyword returns all records from the right table, and the matching records from the left table. -> Definition

--FULL OUTER JOIN or FULL JOIN

select EMP_ID, EMP_NAME, EMP_CITY, EMP_DOB, EMP_SKILLS, EMP_CAR, Car_Name, Car_Model
from domain FULL OUTER JOIN cars ON domain.EMP_CAR = cars.Car_Number;

--The FULL OUTER JOIN keyword returns all records when there is a match in left or right table records. -> Definition
--FULL OUTER JOIN and FULL JOIN are the same.

--SELF JOIN

SELECT EMP_ID, EMP_NAME, EMP_CITY, EMP_DOB, EMP_SKILLS, EMP_CAR, Car_Name, Car_Model
FROM domain T1, cars T2
WHERE T1.EMP_CAR = T2.Car_Number;

--A self join is a regular join, but the table is joined with itself. -> Definition