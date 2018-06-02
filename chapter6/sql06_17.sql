use db_business 
go
select * from 职工 where 姓名 like '%平%'
compute avg(工资) ,max(工资) ,min(工资),sum(工资),count(工资)

use db_business 
go
select * from 职工 order by 仓库号 
   compute avg(工资) ,max(工资) ,min(工资),sum(工资) by 仓库号
