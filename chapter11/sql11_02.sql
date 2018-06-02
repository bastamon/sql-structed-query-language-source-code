use db_business 
go
create view db_view4 
as
select 仓库.仓库号,城市,面积,创建时间,姓名,性别,工资 from 
   仓库,职工 where 仓库.仓库号=职工.仓库号

use db_business 
go
create view db_view5
as
select 城市,面积,姓名,工资,金额 from 仓库,职工, 订购单
 where 仓库.仓库号=职工.仓库号 and 职工.职工号 =订购单.职工号


