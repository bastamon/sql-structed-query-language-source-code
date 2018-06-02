use db_business 
go
select 姓名,工资,面积,金额,
     (工资+金额/1000) as 实发工资 from 职工,仓库,订购单
     where 职工.仓库号 = 仓库.仓库号 and 职工.职工号 =订购单.职工号
     
     
use db_business 
go
select 姓名,工资,城市,(select AVG(工资) from 职工) as 平均工资,
   (工资-(select AVG(工资) from 职工)) as 与平均工资之差
   from 职工,仓库 where 仓库.仓库号=职工.仓库号
