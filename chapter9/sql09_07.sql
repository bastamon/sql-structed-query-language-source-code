use db_business 
go
update 仓库备份 set 面积=888 where 仓库号='wh1'

use db_business 
go
select * from 仓库备份

use db_business 
go
update 仓库备份 set 面积=(面积+150)*1.2 where 仓库号='wh1'
go
select * from 职工备份