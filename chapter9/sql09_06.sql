use db_business 
go
create table mytab
 (
     姓名    varchar(50),
     工资    int
 )
 
use db_business 
go
 insert into mytab select 姓名,工资 from 职工 where 工资>1900
 
select * from mytab 