use db_business 
go
select * from 仓库 where 面积<>(
   select MIN(面积) from 仓库)
 
use db_business 
go
select * from 职工  where 工资!> (
  select AVG(工资) from 职工 
  where 仓库号='wh1' or 仓库号='wh2' )
   