 use db_business 
go 
select *,(select AVG(工资) from 职工 ) as 平均工资
 from 订购单 
 
use db_business 
go 
select (select AVG(工资) from 职工 ) as 平均工资,
  (select AVG(金额) from 订购单 ) as 平均销售金额,
  (select AVG(面积) from 仓库 ) as 平均面积
 from 订购单 