use db_business
go
select * from 仓库 where 创建时间='2003-5-2'

use db_business
go
select * from 仓库 where 创建时间>='2003-04-01'
  and 创建时间<='2003-04-30'
  
  
use db_business
go
select * from 仓库 where 
创建时间 between '2003-04-01'  and '2003-04-30'


