use db_business 
go
select * from 职工 where 工资 like '[1-2][2-7]%'

use db_business 
go
select * from 职工 where 工资 like '_[2-6]_[0-9]'
