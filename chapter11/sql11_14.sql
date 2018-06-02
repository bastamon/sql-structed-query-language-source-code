use db_business 
go
create view db_mymodview
as
select *  from 仓库备份
with check option

use db_business 
go
insert into db_mymodview(仓库号,城市,面积,创建时间)
 values ('wh6','西安',860,'2008-9-9')

use db_business 
go
select * from db_mymodview


