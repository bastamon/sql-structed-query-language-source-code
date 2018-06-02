use db_business 
go
select max(工资) as 最大工资,stdev(工资) as 工资标准差, stdevp(工资) as 工资总体标准差, 
var(工资) as 工资统计方差,varp(工资) as 工资总体变异方差  
from  职工

use db_business 
go
select * ,(select var(面积) from 仓库 ) as 面积统计方差 from 仓库


use db_business 
go
select 性别,stdev(工资) as 工资标准差, stdevp(工资) as 工资总体标准差, 
var(工资) as 工资统计方差,varp(工资) as 工资总体变异方差  
from  职工 group by 性别
use db_business 
go
create view view_mysun
as
select 城市,工资 from 仓库,职工 where 仓库.仓库号=职工.仓库号

use db_business 
go
select 城市,stdev(工资) as 工资标准差, stdevp(工资) as 工资总体标准差, 
var(工资) as 工资统计方差,varp(工资) as 工资总体变异方差  
from  view_mysun group by 城市



