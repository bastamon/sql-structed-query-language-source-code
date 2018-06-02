use db_business 
go
select * from 职工 where 职工号+ 仓库号 like '%3%'

use db_business 
go
select * from 职工 where 职工号 like '%3%' 
or 仓库号 like '%3%'