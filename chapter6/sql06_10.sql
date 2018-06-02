use db_business 
go
select 仓库号,AVG(工资) as 不同仓库的平均工资  from 职工 
where 性别!='女'
group by  仓库号

use db_business 
go
select 仓库号,AVG(工资) as 不同仓库的平均工资  from 职工 
 where 性别 is not null 
 and (工资>(select AVG(工资) from 职工 where 仓库号='wh1'))
group by  仓库号










