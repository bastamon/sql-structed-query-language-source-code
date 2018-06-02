use db_business 
go
select * from 职工 where 姓名 like '%平%'

use db_business 
go
select * from 职工 where 姓名 like '%平'

use db_business 
go
select * from 职工 where 姓名 like '%平%' 
and 姓名 not like '%平'

use db_business 
go
select * from 职工 where 姓名 not like '%平%' 
 and 工资 between 1900 and 2000

