use db_business 
go
select 仓库号,AVG(工资) as 不同仓库的平均工资  from 职工 
group by  仓库号

use db_business 
go
select 职工号,AVG(金额) as 不同职工的平均销售金额,
  MAX(金额) as 不同职工的最大销售金额,
  min(金额) as 不同职工的最小销售金额,
  sum(金额) as 不同职工的金额销售和
  from 订购单 
group by  职工号