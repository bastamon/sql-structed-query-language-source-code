use db_business 
go
select * from 职工 where 工资>any(
        select 工资 from 职工 where 仓库号='wh2')

use db_business 
go       
select * from 职工 where 工资 >(
   select min(工资) from 职工 where 仓库号='wh2')
   
use db_business 
go
select * from 职工 where 工资<any(
        select 工资 from 职工 where 仓库号='wh2')

use db_business 
go
select * from 职工 where 工资<=(
   select max(工资) from 职工 where 仓库号='wh2')
   
   
use db_business 
go
select * from 职工 where 工资=any(
        select 工资 from 职工 where 仓库号='wh1') and 仓库号!='wh1'
        
 use db_business 
go
select * from 职工 where 工资 in (
        select 工资 from 职工 where 仓库号='wh1') and 仓库号!='wh1'

use db_business 
go
select * from 职工 where 工资>any(
        select 工资 from 职工 where 姓名 like '%李%') 
        and 姓名 like '%平%'



