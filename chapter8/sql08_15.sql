use db_business 
go
select 仓库号 from 仓库 where 城市 ='北京'
except 
select 仓库号 from 职工 where 工资>1900



use db_business 
go
select 仓库号 from 仓库 where 城市 ='北京' and 仓库号 not in (
      select 仓库号 from 职工 where 工资>1900)

use db_business 
go
select 仓库号 from 职工 where 工资>1900
except 
select 仓库号 from 仓库 where 城市 ='北京'

use db_business 
go
select distinct 仓库号 from 职工 where 工资>1900 
   and 仓库号 not in (select 仓库号 from 仓库 where 城市 ='北京')