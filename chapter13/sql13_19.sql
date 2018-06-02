use db_business 
go
create function db_fun1(@x int) 
returns int
as
begin
   declare @y int
   set @y=@x*@x
   return @y
end
go
print dbo.db_fun1(7)


declare @x1 int
set @x1=1
while  @x1<=7
begin
  select cast(@x1 as varchar(50))+'*'+cast(@x1 as varchar(50)) as 运算式,
  dbo.db_fun1(@x1)as 乘方结果 
  set @x1=@x1+1
end

use db_business 
go
select 职工.*,dbo.db_fun1(工资) as 工资的平方 from 职工





