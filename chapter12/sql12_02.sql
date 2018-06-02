use db_business 
go
create procedure  proc_sql2
as
begin
  select * from 职工 where 工资>2000
end
go
execute proc_sql2

use db_business 
go
create procedure  proc_sql3
as
begin
   select * from 职工 where 
    工资>(select max(工资) from 职工 where 仓库号='wh1') and
    工资>all(select avg(工资) from 职工 group by 仓库号)    
end
go
execute proc_sql3

use db_business 
go
create procedure  proc_sql4
as
begin
   select * from 职工 where 姓名 like '%张%'
   select * from 仓库 where 仓库号 in(
     select 仓库号 from 职工 where 姓名 like '%张%' )
end
go
execute proc_sql4










