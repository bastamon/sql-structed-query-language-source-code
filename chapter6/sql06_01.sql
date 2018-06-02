use db_business 
go
select COUNT(*) as 职工人数 from 职工

use db_business 
go
select COUNT(*) as 个数 from 职工 
where 性别='男' and 工资>1500

use db_business 
go
select COUNT(仓库号) as 仓库号个数 from 职工 

use db_business 
go
select COUNT( Distinct(仓库号) ) as 无重复的仓库号个数 
from 职工




