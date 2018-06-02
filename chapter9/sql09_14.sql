use db_business 
go
delete 仓库备份 where 面积 in ( 
   (select MAX(面积) from 仓库备份),
   (select min(面积) from 仓库备份)
   )
   
use db_business 
go
delete 职工备份 where 工资> (select AVG(工资) from 职工备份 )

use db_business 
go
delete 职工备份 where 仓库号 in
    (select 仓库号 from 仓库备份  where 城市 in('上海','济南'))





