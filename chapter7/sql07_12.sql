use db_business 
go
select * from 
  (select 仓库号,AVG(工资)as 平均工资, (SUM(工资)/AVG(工资))as 职工人数,
    MAX(工资) as 最大工资 from 职工 group by 仓库号) mytab
    order by 平均工资

use db_business 
go
select * from 
  (select 仓库号,AVG(工资)as 平均工资, (SUM(工资)/AVG(工资))as 职工人数,
    MAX(工资) as 最大工资 from 职工 group by 仓库号 having AVG(工资)>1700) mytab