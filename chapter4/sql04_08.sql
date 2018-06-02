use db_business 
go
select * from 职工  where 姓名='林安平'

use db_business 
go
select * from 订购单 where 职工号 in
( select 职工号 from 职工  where 姓名='林安平')


use db_business 
go
select * from 仓库 where 仓库号 in
( select 仓库号 from 职工  where 姓名='林安平')


use db_business 
go
select * from 职工 where 工资=1830




