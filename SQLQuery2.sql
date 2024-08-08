create database company;

drop table domain;

select * from domain;
delete from domain;

create table domain(
	EMP_ID int identity(1,1) primary key not null, -- identity in sql server means the same as autoincrement in mysql
	EMP_NAME varchar(20) not null,
	EMP_CITY varchar(20) not null,
	EMP_DOB date not null,
	EMP_SKILLS varchar(20),
	EMP_CAR int
);

insert into domain values('Abhishek', 'Pune', '1999-12-24', 'Data Engineer', 2460);
insert into domain values('Abhijeet', 'Malegaon', '1999-10-01', 'Full Stack Developer', 2478);
insert into domain values('Kalpesh', 'Nashik', '2000-01-20', 'Salesforce', 2498);
insert into domain values('Sujay', 'Sangli', '1999-06-10', 'Sales Lead', 2510);

DBCC CHECKIDENT('domain', RESEED, 0)

-- how to delete duplicate rows in sql server
--using cte and row number

------

with domaincte as (select *, ROW_NUMBER() Over(Partition by EMP_NAME order by EMP_ID) as RowNumber from domain)
delete from domaincte where RowNumber > 1

---------------------------------------------------