use db_business 
go
select 姓名,(select avg(工资) from 职工 where 仓库号= a.仓库号)as 不同仓库的平均工资,
       (select avg(金额) from 订购单 where 职工号= b.职工号)as 不同职工的平均金额,
        (select AVG(面积) from 仓库) as 平均面积
from 仓库,职工 a,订购单 b where  仓库.仓库号= a.仓库号 and a.职工号 =b.职工号 and
   (select avg(金额) from 订购单 where 职工号= b.职工号)<10000 and
   (select avg(工资) from 职工 where 仓库号= a.仓库号)>1600
   
   
use db_business 
go 
select 姓名,不同仓库的平均工资,不同职工的平均金额,平均面积 from 基于视图的视图 
where 不同仓库的平均工资>1600 and 不同职工的平均金额<10000