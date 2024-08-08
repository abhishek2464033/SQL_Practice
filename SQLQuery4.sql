select * from cars;
select * from domain;
select top 1* from domain;

exec sp_help domain;

select * into test from domain; -- backup of the table created
select * into dummy from cars; --backup


select * from test;
--practising basic order by, and, or, not, null and multiple update conditions on test
select * from test order by EMP_NAME, EMP_ID;

select * from test where EMP_NAME like 'Abhi%' AND EMP_ID = 2;

select * from test where EMP_NAME like 'Abhi%' OR EMP_ID = 2;

select * from test where EMP_NAME like 'Abhi%' AND (EMP_ID = 2 OR EMP_SKILLS = 'Data Engineer');

select * from test where NOT EMP_NAME = 'Abhishek';
select * from test where EMP_NAME NOT LIKE 'Abhi%';

select * from test where EMP_NAME IS NOT NULL;
select * from test where EMP_NAME is NULL;

select * from test;

--multiple update conditions
UPDATE test
SET EMP_CITY = CASE EMP_ID
WHEN 2 THEN 'Malegaon-Nashik'
WHEN 3 THEN 'Nashik-City'
ELSE EMP_CITY
END
WHERE EMP_ID IN(2, 3);

select * from test where EMP_CAR = 2478;

-- LIKE, wildcards, in , between, Alias
select * from test where EMP_NAME LIKE 'A%k';
select * from test where EMP_NAME LIKE '%t' OR EMP_NAME LIKE '%y';
select * from test where EMP_NAME LIKE '_b__s%'
select * from test where EMP_NAME LIKE '%e_'
-- _ and % are the wildcards used in LIKE operator
-- its _ wildcard and % wildcard

-- IN and NOT IN 
select * from test where EMP_CAR IN (2460, 2478, 2498);

SELECT * FROM test
WHERE EMP_ID IN (SELECT EMP_ID FROM test);


SELECT * FROM test
WHERE EMP_ID NOT IN (SELECT EMP_ID FROM test);
-----------

-- Between
select * from test 
where EMP_ID between 2 AND 4;

select * from test 
where EMP_ID not between 2 AND 4;

select * from test 
where EMP_ID between 2 AND 4
and EMP_NAME IN ('Abhishek', 'Abhijeet')
------

--Alias for a column
select EMP_ID as ID from test;
-- Alias for a table
select * from test as Testing;

-------------------------------------------------------
--basic aggregate functions in sql
-- MAX(), MIN(), COUNT(), SUM(), AVG()

select * from test;
select MAX(EMP_CAR) from test;
select MIN(EMP_CAR) from test;
select count(*) from test;
select sum(EMP_CAR) from test;
select avg(EMP_CAR) from test;
---------

