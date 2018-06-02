use db_business 
go
select * from 职工 where 姓名 like '%平%' 
order by 工资  desc

use db_business 
go
select * from 职工 where 工资 between 1200 and 1600
order by 仓库号  desc

