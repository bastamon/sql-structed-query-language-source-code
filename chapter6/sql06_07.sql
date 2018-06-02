use db_business 
go
select * from 仓库 where 面积=(
  select max(面积) from 仓库)

use db_business 
go
select * from 职工 where 仓库号 in (
 select 仓库号 from 仓库 where 面积=(
  select max(面积) from 仓库))

use db_business 
go
select * from 仓库 where 面积 not in (
  (select max(面积) from 仓库),
  (select min(面积) from 仓库))


use db_business 
go
select * from 职工 where 仓库号 in (
 select 仓库号 from 仓库 where 面积 in(
  (select max(面积) from 仓库),
  (select min(面积) from 仓库)))

use db_business 
go
select * ,
工资-(select avg(工资) from 职工) as 工资与平均工资之差  
from  职工 where abs(工资-(select avg(工资) from 职工))>300








