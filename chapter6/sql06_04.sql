use db_business 
go
select COUNT(*) as 仓库个数,max(面积) as 最大仓库面积,
min(面积) as 最小仓库面积, SUM(面积) as 仓库面积之和,
AVG(面积) as 仓库面积平均值 from 仓库

use db_business 
go
select * from 仓库 where 面积>
(select avg(面积) from 仓库)

use db_business 
go
select AVG(工资) as 平均工资 from 职工 where 工资!=(
  select MAX(工资) from 职工)

use db_business 
go
select AVG(工资) as 平均工资 from 职工 where 工资
  not in ( (select MAX(工资) from 职工),
  (select min(工资) from 职工))





