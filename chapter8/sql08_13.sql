use db_business 
go
select 仓库号 from 仓库 where 城市 ='北京'
union
select 仓库号 from 职工 where 工资>2000

use db_business 
go
select distinct 仓库.仓库号 from 仓库,职工 where 仓库.仓库号= 职工.仓库号
   and (城市 ='北京' or 工资>2000)
   
   
use db_business 
go
select 仓库号 from 仓库 where 城市 ='北京' or 仓库号 in (
      select 仓库号 from 职工 where 工资>2000)

use db_business 
go
select 仓库号,面积 as 面积和工资 from 仓库 where 城市 ='北京'
union
select 仓库号,工资  as 面积和工资 from 职工 where 工资>2000

use db_business 
go
select 仓库号,面积 as 面积和工资 from 仓库 where 城市 ='北京'
union
select 仓库号,工资  as 面积和工资 from 职工 where 工资>2000
order by 仓库号 ASC

use db_business 
go
select 仓库号 from 仓库 where 城市 ='北京'
union all
select 仓库号 from 职工 where 工资>2000

