use db_business 
go 
select * from 订购单

use db_business 
go 
select *,(select AVG(金额) from 订购单) as 平均销售金额,
   (金额-(select AVG(金额) from 订购单)) as 与平均销售金额之差
 from 订购单
 
use db_business 
go 
select *,(select AVG(金额) from 订购单) as 平均销售金额,
   (金额-(select AVG(金额) from 订购单)) as 与平均销售金额之差
 from 订购单 where abs(金额-(select AVG(金额) from 订购单))>6500
 
 

 
 
 
 