use db_business 
go
select 仓库.仓库号,城市,面积,姓名,工资,金额 into 多表连接产生的新表 
  from 仓库,职工,订购单 
  where 仓库.仓库号= 职工.仓库号 and 职工.职工号=订购单.职工号
  
  
  
use db_business 
go
select * from 多表连接产生的新表


use db_business 
go
select 仓库号,avg(金额) as 平均销售金额,max(金额) as 最大销售金额,
 min(金额) as 最小销售金额,
 (max(金额)-min(金额)) as 最大销售金额与最小销售金额之差
 from 多表连接产生的新表 group by 仓库号 
 having (max(金额)-min(金额))<12000
 
 
 
 
 use db_business 
go
select 仓库号,avg(金额) as 平均销售金额,max(金额) as 最大销售金额,
 min(金额) as 最小销售金额,
 (max(金额)-min(金额)) as 最大销售金额与最小销售金额之差 
 into 分组查询产生的新表
 from 多表连接产生的新表 group by 仓库号


use db_business 
go
 select * from  分组查询产生的新表 
    where 最大销售金额与最小销售金额之差<12000