use db_business 
go
select * from 职工 where 工资>1500 and 工资<1800

use db_business 
go
select * from 职工 where 性别='男' and 工资>1850

use db_business 
go
select * from 职工 where 仓库号!='wh1' and 性别<>'男' and 工资!>1900  
         and 仓库号 in (select 仓库号 from 仓库 where 城市 !='青岛')


