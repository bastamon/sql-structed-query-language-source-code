use db_business 
go
create view 仓库视图
as
select 仓库号,城市,面积,创建时间,
  (select AVG(面积) from 仓库) as 平均面积,
  (select max(面积) from 仓库) as 最大面积,
  (select min(面积) from 仓库) as 最小面积,
  (select sum(面积) from 仓库) as 面积和
  from 仓库
  go
use db_business 
go
select * from 仓库视图

use db_business 
go
create view 职工视图
as
select 仓库号,职工号,姓名,性别,工资,
  (select AVG(工资) from 职工) as 平均工资,
  (select max(工资) from 职工) as 最大工资,
  (select min(工资) from 职工) as 最小工资,
  (select sum(工资) from 职工) as 工资和,
  (select avg(工资) from 职工 where 仓库号= a.仓库号)as 不同仓库的平均工资,
  (select max(工资) from 职工 where 仓库号= a.仓库号)as 不同仓库的最大工资,
  (select min(工资) from 职工 where 仓库号= a.仓库号)as 不同仓库的最小工资,
  (select sum(工资) from 职工 where 仓库号= a.仓库号)as 不同仓库的工资和
 from 职工 a
 go
use db_business 
go
select * from 职工视图

use db_business 
go
create view 订购单视图
as
select 职工号,订购日期,金额,
  (select AVG(金额) from 订购单) as 平均金额,
  (select max(金额) from 订购单) as 最大金额,
  (select min(金额) from 订购单) as 最小金额,
  (select sum(金额) from 订购单) as 金额和,
  (select avg(金额) from 订购单 where 职工号= a.职工号)as 不同职工的平均金额,
  (select max(金额) from 订购单 where 职工号= a.职工号)as 不同职工的最大金额,
  (select min(金额) from 订购单 where 职工号= a.职工号)as 不同职工的最小金额,
  (select sum(金额) from 订购单 where 职工号= a.职工号)as 不同职工的金额和
 from 订购单 a

use db_business 
go
select * from 订购单视图

use db_business
go
create view 基于视图的视图 
as
select 仓库视图.仓库号,城市,面积,平均面积,最大面积,最小面积,面积和,
       姓名,性别,工资,平均工资,最大工资,最小工资,
       不同仓库的平均工资,不同仓库的最大工资,不同仓库的最小工资,不同仓库的工资和,
       订购单视图.职工号,订购日期,金额,平均金额,最大金额,最小金额,金额和,
       不同职工的平均金额,不同职工的最大金额,不同职工的最小金额,不同职工的金额和
from 仓库视图,职工视图,订购单视图 
 where 仓库视图.仓库号 =职工视图.仓库号 and 订购单视图.职工号=职工视图.职工号


use db_business 
go
select * from  基于视图的视图


use db_business
go
create view 统计隐含信息视图 
as
select 姓名,平均面积,最大面积,最小面积,面积和, 平均工资,最大工资,最小工资,
       不同仓库的平均工资,不同仓库的最大工资,不同仓库的最小工资,不同仓库的工资和,
       平均金额,最大金额,最小金额,金额和,
       不同职工的平均金额,不同职工的最大金额,不同职工的最小金额,不同职工的金额和
from 基于视图的视图 


use db_business 
go
select * from  统计隐含信息视图


























