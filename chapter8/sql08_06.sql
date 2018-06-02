use db_business 
go
select 姓名,工资,(select AVG(工资) from 职工)as 平均工资,金额 
from 职工, 订购单 where  职工.职工号 =订购单.职工号 
and 工资>= (select AVG(工资) from 职工)


use db_business 
go
select 姓名,工资, 工资-(select avg(工资) from 职工) as 与平均工资的差,
  金额 from 职工, 订购单 
  where  职工.职工号 =订购单.职工号 
  and abs(工资-(select avg(工资) from 职工))>400
  
use db_business 
go
  select 姓名,工资, 金额 from 职工, 订购单 
  where  职工.职工号 =订购单.职工号 
   and 工资>all( select avg(工资) from 职工 group by 仓库号)

