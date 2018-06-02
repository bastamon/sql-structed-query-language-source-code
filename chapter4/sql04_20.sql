use db_business 
go
select * from 职工 where 工资 like '_[^2-9]%'

use db_business 
go
select * from 职工 where 工资 like '_[^2-6]%'
and  姓名 like '%平%' and 仓库号 in ('wh1','wh3')
