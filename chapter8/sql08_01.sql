use db_business 
go
select 姓名,工资,城市 from 职工,仓库

use db_business 
go
select 姓名,工资,城市 from 职工,仓库 where 职工.仓库号 =仓库.仓库号