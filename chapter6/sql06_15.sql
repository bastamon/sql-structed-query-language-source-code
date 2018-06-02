use db_business 
go
select 仓库号,性别,AVG(工资) as 不同仓库的平均工资  from 职工 
where 性别 is not null
group by  仓库号,性别 

use db_business 
go
select 仓库号,性别,AVG(工资) as 不同仓库的平均工资  from 职工 
where 性别 is not null
group by  仓库号,性别 with rollup


use db_business 
go
select 仓库号,性别,AVG(工资) as 不同仓库的平均工资  from 职工 
where 性别 is not null
group by  性别,仓库号 with rollup
