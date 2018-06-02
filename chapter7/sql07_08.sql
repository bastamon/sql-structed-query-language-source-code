use db_business 
go
select * from 职工 where 工资>=ALL(
   select 工资 from 职工 where 仓库号='wh2')
   
use db_business 
go   
select * from 职工 where 工资>=(
   select MAX(工资) from 职工 where 仓库号='wh2')
   
   
use db_business 
go
select * from 职工 where 工资<=ALL(
   select 工资 from 职工 where 仓库号='wh2')

use db_business 
go   
select * from 职工 where 工资<=(
   select min(工资) from 职工 where 仓库号='wh2')