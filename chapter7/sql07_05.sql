use db_business 
go
select * from 仓库 where 面积 in 
   (      ( select MAX(面积) from 仓库 ),(select min(面积) from 仓库)
    )
    
use db_business 
go
select * from 订购单 where 职工号 in
(
 select 职工号 from 职工 where 仓库号 in 
 (
   select 仓库号 from 仓库 where 面积 in 
   (      
      ( select MAX(面积) from 仓库 ),
       (select min(面积) from 仓库)
    )
 )
)


use db_business 
go
select * from 仓库 where 仓库号 in
(
  select 仓库号 from 职工 where 工资 not in
  (
    ( select MAX(工资) from 职工 ),
       (select min(工资) from 职工)
  )
 )

use db_business 
go
select * from 职工 where 职工号 not in  (select 职工号 from 订购单)