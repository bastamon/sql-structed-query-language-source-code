use db_business 
go
update 仓库备份 set 城市='郑州',创建时间='2009-9-9' where  仓库号='wh1'


use db_business 
go
select * from 仓库备份

use db_business 
go
update 仓库备份 set 面积=890,创建时间='2008-8-8' where 面积>890
go
select * from 仓库备份 order by 面积 desc

use db_business 
go
update 仓库备份 set 面积=面积+80 ,城市 = '济南' where 面积<
  ( select MIN(面积) from 仓库备份 where 城市='北京')

