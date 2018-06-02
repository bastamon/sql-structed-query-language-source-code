use db_business 
go
declare @x int
set @x=2000
select * from 职工 where 工资>@x

