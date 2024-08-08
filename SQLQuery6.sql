--Aggregate function are basic functions like min,max,count,sum,avg
--Aggregate functions are often used with the GROUP BY clause of the SELECT statement. 
--The GROUP BY clause splits the result-set into groups of values and the aggregate function can be used 
--to return a single value for each group.

create table Bank(
	Customer_ID int primary key identity(1,1),
	Customer_name varchar(20),
	Customer_DOB date,
	Customer_city varchar(20)
);

select * from Bank;
drop table Bank;

insert into Bank values ('Abhishek','1999-12-24', 'Pune'), ('Abhijeet', '1999-10-01', 'Malegaon'), ('Kalpesh', '2000-07-01', 'Nashik');
insert into Bank values ('Nikhil', '1998-03-02', 'Pune'),('Amruta', '1998-09-07', 'Nashik');

select Customer_city, count(*) as cnt from Bank group by Customer_city;
select Customer_city, sum(Customer_ID) as SUMofIDS from Bank group by Customer_city;

-- cross join in sql

select * from domain;
select * from cars;

select * from domain CROSS JOIN cars;

-----------------------------------------------------------

--temporary table in sql
-- created in tempDb and are automatically deleted as soon as last connection is terminated
-- temporary tables are very useful when we need to store temporary data

create table #EMP_DETAILS (id int, name varchar(23));
insert into #EMP_DETAILS values (1, 'abhishek');
select * from #EMP_DETAILS

----------------------------------

