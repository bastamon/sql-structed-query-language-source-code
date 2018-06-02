use db_business 
go
select * from 仓库 where 面积!=900

use db_business 
go
select * from 仓库 where 面积<>900

/*利用>=运算符来实现*/
use db_business 
go
select * from 职工 where 工资>=2000
/*利用!<运算符来实现*/
use db_business 
go
select * from 职工 where 工资!<2000

/*利用<=运算符来实现*/
use db_business 
go
select * from 职工 where 工资<=1500
/*利用!>运算符来实现*/
use db_business 
go
select * from 职工 where 工资!>1500


use db_business 
go
select * from 订购单 where 职工号 in( 
select 职工号 from 职工 where 工资>2000)




