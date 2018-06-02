use db_business 
go
select 姓名,工资,城市 from 职工,仓库 where 职工.仓库号 =仓库.仓库号  
   and 工资>=1500 and 工资<=2000 and 城市='北京'
   
use db_business 
go  
select 姓名,工资,城市 from 职工,仓库 where 职工.仓库号 =仓库.仓库号  
   and (工资 between 1500 and 2000 )and 城市='北京'
   
   
use db_business 
go 
select 姓名,工资,城市 from 职工,仓库 where 职工.仓库号 =仓库.仓库号  
   and  not(工资 between 1500 and 2000 )and 城市 is null
 
   
   
