use db_business 
go
select * from 仓库 where 城市 is null

use db_business 
go
select * from 仓库 where 城市 is not null


use db_business 
go
select * from 仓库 where 城市 is not null and 
  面积 between 1000 and 1300
  
  
  use db_business 
go
select * from 职工 where 性别 is not null 
  and 仓库号 in (select 仓库号 from 仓库 where 
   城市 is null)
  
  
  