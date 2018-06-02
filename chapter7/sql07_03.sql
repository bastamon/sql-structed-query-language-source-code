use db_business 
go
select * from 职工 where 工资>  ( select MAX(工资) from 职工 where 仓库号='wh1')
  and 工资<  (select MAX(工资) from 职工 where 仓库号='wh2')
  
use db_business 
go
select * from 仓库 where 面积>(select AVG(面积) from 仓库 where 城市='北京')
  or 面积<(select min(面积) from 仓库 where 城市='济南')
  
use db_business 
go
select * from 职工  where 工资 between (select AVG(工资) from 职工 where 仓库号='wh1')
                               and  (select AVG(工资) from 职工) 
                               
use db_business 
go
select * from 职工  where 工资 not between (select AVG(工资) from 职工)
                               and (select AVG(工资) from 职工 where 仓库号='wh2')
                                  

   