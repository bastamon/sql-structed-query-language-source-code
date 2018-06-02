use db_business 
go
select 仓库号,COUNT(仓库号) as 职工人数,AVG(工资) as 平均工资 ,AVG(金额) as 平均销售金额
 from 基于视图的视图 group by 仓库号
 
 use db_business 
go
select 仓库号,COUNT(仓库号) as 职工人数,AVG(工资) as 平均工资 ,AVG(金额) as 平均销售金额
 from 基于视图的视图  where 工资>1500
 group by 仓库号 having COUNT(仓库号)<5 
 order by 平均销售金额 desc

 
 
 