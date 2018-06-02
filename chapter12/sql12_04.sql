use db_business 
go
create proc proc_sql7 
  @mingz int,
  @maxgz int
 as
  select * from 职工 where 工资 between @mingz and @maxgz

go
execute proc_sql7 1500,1800

use db_business 
go
create proc proc_sql8 
  @chengshi varchar(50)
 as
 begin
  select * from 仓库 where 城市 = @chengshi
  select * from 职工 where 仓库号 in (
    select 仓库号 from 仓库 where 城市 = @chengshi)
 end
go
execute proc_sql8 '北京' 






