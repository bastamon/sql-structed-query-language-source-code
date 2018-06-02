use db_business 
go
exec sp_rename '仓库备份.idx_sc1','chmodifyindex','index'

use db_business 
go
exec sp_helpindex 仓库备份
