create table geek1(Col1 int, Col2 varchar(20), Col3 varchar(20));
select * from geek1;
insert into geek1 values(10, 'A', 'Q'),(20, 'B', 'R'),(30, 'C', 'S'),(40, 'D', 'T'),(50, 'E', 'U');

create table geek2(Col1 int, Col2 varchar(20), Col3 varchar(20));
select * from geek2;
insert into geek2 values(40, 'F', 'V'),(50, 'G', 'W'),(60, 'H', 'X'),(70, 'I', 'Y'),(80, 'J', 'Z');

select * from geek1;
select * from geek2;

update geek1 set geek1.Col2 = geek2.Col2, geek1.Col3 = geek2.Col3
from geek1 inner join geek2 ON geek1.Col1 = geek2.col1
where geek1.Col1 in (40,50)


select * from geek1 inner join geek2 on geek1.Col1 = geek2.Col1;

select * from geek1 cross join geek2 where geek1.Col1 = geek2.Col1;

-- Cross join under a where condition behaves as a inner join 