use company;

create table cars(
	Car_Number int primary key NOT NULL,
	Car_Name varchar(20),
	Car_Model varchar(20),
);
-- different types of select statements for confusion
select * from cars order by Car_Number desc;
select * from cars;
select 1 from cars;
select 0 from cars;
select count(*) from cars;
select count(0) from cars;




--multiple inserts in single line
insert into cars (Car_Number, Car_Name, Car_Model) Values (2460, 'Bugatti', 'Sports-Chiron');
insert into cars (Car_Number, Car_Name, Car_Model) Values (2465, 'Skoda', 'Sedan-Rapid'),(2498, 'Mercedes', 'CLA');

-- update query
update cars
set Car_Model = 'Sedan-CLA'
where Car_Number = 2498;

---insert and delete query
insert into cars values(2478, 'Audi', 'Sports-R8');
-- deleting skoda as its low end car
delete from cars where Car_Number = 2465;

--------------
--Difference between delete , drop and truncate
/*
The DROP command in SQL removes the table from the database, the DELETE command removes one or more records from the table, 
and the TRUNCATE command removes all the rows from the existing table.
*/
drop table cars;
delete from cars;
truncate table cars;

