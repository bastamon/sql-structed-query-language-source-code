use db_business 
go
create view db_view6 
as
select 仓库号,职工号,姓名,工资,
  (select avg(工资) from 职工) as 所有职工的平均工资 from 职工
  
  
  
use db_business 
go
create view db_view7 
as
select 姓名,工资,
  (select avg(工资) from 职工) as 所有职工的平均工资 ,
  (select avg(工资) from 职工 where 仓库号= a.仓库号) 
  as 不同仓库的平均工资,
  工资-(select avg(工资) from 职工 where 仓库号=a.仓库号) 
  as 职工工资与所在仓库的平均工资之差
  from 职工 a
