use db_business 
go
select SUM(工资) as 工资和 from 职工 

use db_business 
go
select SUM(工资) as wh1仓库工资和 
from 职工 where 仓库号='wh1'


use db_business 
go
select SUM(工资) as 北京地区的工资和 from 职工 
where 仓库号 in ( select 仓库号 from 仓库
 where 城市='北京')
 
 
use db_business 
go
select count(*) as wh2仓库人数,
SUM(工资) as wh2仓库工资和 
from 职工 where 仓库号='wh2'

use db_business 
go
select SUM(工资) as 工资和,COUNT(*) as 职工人数
from 职工 where  工资>(select SUM(工资)/COUNT(*) 
from 职工)





 
 
 
 