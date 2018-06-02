use db_business 
go
select 仓库号 from 仓库 where 城市 ='北京'
Intersect 
select 仓库号 from 职工 where 工资>1500

use db_business 
go
select distinct 仓库.仓库号 from 仓库,职工 where 仓库.仓库号= 职工.仓库号
   and (城市 ='北京' and 工资>1500)
   
   
   
use db_business 
go
select 仓库号 from 仓库 where 城市 ='北京' and 仓库号 in (
      select 仓库号 from 职工 where 工资>1500)

