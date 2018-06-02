use db_business 
go
select * from 职工 where 工资>all
  (select AVG(工资) from 职工 group by 仓库号)
  
  
use db_business 
go
select * from 职工 where 工资>any
  (select AVG(工资) from 职工 group by 仓库号)
  
  
  use db_business 
go
select * from 仓库 where 仓库号 in(
 select 仓库号 from 职工 where 工资>all
  (select AVG(工资) from 职工 group by 仓库号))

  
  