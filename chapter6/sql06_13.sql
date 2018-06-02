use db_business 
go
select 仓库号,max(工资) as 不同仓库的最大工资,min(工资) as 不同仓库的最小工资,
   (max(工资)-min(工资)) as 不同仓库的最大工资与最小工资之差
  from 职工 where 工资>1900
group by 仓库号

use db_business 
go
select 仓库号,max(工资) as 不同仓库的最大工资,min(工资) as 不同仓库的最小工资,
   (max(工资)-min(工资)) as 不同仓库的最大工资与最小工资之差
  from 职工 where 工资>1900
group by all 仓库号




use db_business 
go
select 仓库号,性别,AVG(工资) as 不同仓库的平均工资  from 职工 
  where 性别 is not null 
group by  all 仓库号,性别









