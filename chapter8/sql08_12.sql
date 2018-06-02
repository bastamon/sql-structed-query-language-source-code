use db_business 
go
select 城市,面积,姓名,工资,金额 from  仓库
   Left join 职工 on  职工.仓库号=仓库.仓库号
   Right join  订购单 on 职工.职工号=订购单.职工号 
   and 工资>1800 and 面积<1000 and 金额!=16600
   
   
use db_business 
go
select 城市,面积,姓名,工资,金额 from  仓库
   Right join 职工 on  职工.仓库号=仓库.仓库号
   Left join  订购单 on 职工.职工号=订购单.职工号 
   and 工资>1800 and 面积<1000 and 金额!=16600