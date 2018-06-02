use db_business 
go
select * from 职工视图 order by 不同仓库的平均工资

use db_business 
go
select 姓名,工资,(工资-平均工资) as 工资与平均工资之差,
(工资-不同仓库的平均工资) as 工资与不同仓库的平均工资之差  from 职工视图 
order by 工资与不同仓库的平均工资之差 desc