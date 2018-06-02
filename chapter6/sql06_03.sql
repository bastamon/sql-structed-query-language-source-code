use db_business 
go
select MAX(工资) as 职工最大工资
,MIN(工资)as 职工最小工资 from 职工

use db_business 
go
select MAX(工资) as wh2仓库最大工资
,MIN(工资)as wh2仓库职工最小工资 ,
(MAX(工资)-MIN(工资)) as 工资差
from 职工  where 仓库号='wh2'



use db_business 
go
select (MAX(工资)-MIN(工资)) as 工资差, 工资评语=
case
  when (MAX(工资)-MIN(工资))>300 then '工资差别大'
  when (MAX(工资)-MIN(工资))<=300 then '工资差别不大'
end 
from 职工 



use db_business 
go
select * from 职工 where 工资>
(select MAX(工资) from 职工 where 仓库号='wh1')






