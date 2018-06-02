use db_business 
go
select a.* from 订购单 a where 金额=(
      select max(金额) from 订购单 where 职工号=a.职工号)
      
      
use db_business 
go   
select * from 订购单 where 金额 in
      ( select max(金额) from 订购单 group by 职工号)
      
      
use db_business 
go
select a.* from 职工 a where 工资=(
      select max(工资) from 职工 where 仓库号=a.仓库号)

use db_business 
go   
select * from 职工 where 工资 in
      ( select max(工资) from 职工 group by 仓库号)