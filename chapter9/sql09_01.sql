use db_business
go
select * into 仓库备份 from 仓库
go
select * into 职工备份 from 职工

use db_business
go
insert into 仓库备份(仓库号,城市,面积,创建时间) 
              values ('wh6','青岛',890,'2008-8-8')

use db_business
go
insert into 仓库备份  values ('wh7','青岛',890,'2008-8-8')
              
select * from 仓库备份

use db_business
go
insert into 仓库(仓库号,城市,面积,创建时间) 
              values ('wh3','青岛',890,'2008-8-8')

use db_business
go
insert into 仓库备份(仓库号,城市,面积,创建时间) 
              values ('wh12','青岛',360,'2008-8-8')




