use db_business 
go
select 姓名,城市 from 仓库 inner join 职工 on 职工.仓库号=仓库.仓库号 


use db_business 
go
select 姓名,城市 from 仓库 inner join 职工 on 职工.仓库号=仓库.仓库号 
  and 城市 is not null and 姓名  like '%王%'

use db_business 
go
select 城市,面积,姓名,工资,金额 from  仓库
   inner join 职工 on  职工.仓库号=仓库.仓库号
   inner join  订购单 on 职工.职工号=订购单.职工号 
   and 工资>1800 and 面积<1000 and 金额!=16600
 


