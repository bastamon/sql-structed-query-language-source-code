
use db_business 
go
select 仓库号,AVG(工资) as 不同仓库的平均工资  from 职工 
group by  仓库号 having AVG(工资)>1700
use db_business 
go
select 仓库号,(max(工资)-min(工资)) as 不同仓库的最大工资与最小工资之差
  from 职工 group by  仓库号
  having (max(工资)-min(工资))>350

use db_business 
go
select 仓库号,max(工资) as 不同仓库的最大工资,min(工资) as 不同仓库的最小工资,
   (max(工资)-min(工资)) as 不同仓库的最大工资与最小工资之差
  from 职工  where 姓名 not like '%刘%' 
group by  仓库号 
having (max(工资)-min(工资))>350




