create function myfun(@x int) returns int
as
begin
 declare @y int
 set @y=@x*0.15
 return @y
end

use db_business 
go
select *,dbo.myfun(工资) as 奖金  from 职工