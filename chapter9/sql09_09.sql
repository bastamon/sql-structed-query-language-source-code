use db_business 
go
update 职工备份 set 工资=(工资-100)*2 where 仓库号 in
   (select 仓库号 from 仓库备份 where 城市='北京')
   
use db_business 
go
update 仓库备份 set 面积=面积+80 where 面积<
  ( select MIN(面积) from 仓库备份 where 城市='北京')

use db_business 
go
update 职工备份 set 工资=工资-66 where 工资> all(
   select AVG(工资) from 职工备份 group by 仓库号)