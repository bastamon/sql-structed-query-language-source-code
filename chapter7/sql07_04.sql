use db_business 
go
select * from 职工 where 工资!>(
   select avg(工资) from 职工 where 仓库号 in (
     select 仓库号 from 仓库 where 城市='北京')
     )