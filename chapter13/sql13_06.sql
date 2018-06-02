declare @x real
set @x=5.687
print ceiling(@x)
print floor(@x)
print round(@x,1)
print round(@x,2)

use db_business 
go
select 姓名,工资,工资*0.105 as 奖金, FLOOR(工资*0.105) as 奖金最小值,
  CEILING (工资*0.105) as 奖金最大值,round (工资*0.105,2) as 奖金四余五入
  from 职工