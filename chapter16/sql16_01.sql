set transaction isolation level
repeatable read
begin transaction
use db_business 
go
select * from 职工 where 职工号 in
 (select 职工号 from 订购单 where 金额>15000)
 and 仓库号 in (select 仓库号 from 仓库 where 城市!='青岛')
 and 工资>1500
 commit transaction
