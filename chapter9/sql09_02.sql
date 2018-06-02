use db_business 
go
insert into 仓库备份(仓库号) values ('wh7')
go
select * from 仓库备份

use db_business 
go
insert into 仓库备份(仓库号,城市,面积,创建时间) 
    values ('wh8',Null,800,Null)
go
select * from 仓库备份

use db_business 
go
insert into 职工备份 default values
go
select * from 仓库备份








