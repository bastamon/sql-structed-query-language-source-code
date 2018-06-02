use db_business 
go
begin tran
update 仓库备份 set 面积=面积+88 where 城市='北京'
waitfor delay '0:00:10'
rollback tran

use db_business 
go
dbcc opentran