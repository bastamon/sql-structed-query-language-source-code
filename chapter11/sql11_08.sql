use db_business 
go
create view db_modview
as 
select 姓名,工资,面积 from 仓库,职工 where 仓库.仓库号=职工.仓库号
go
use db_business 
go
select * from db_modview

use db_business 
go
alter view db_modview
as 
select 姓名,性别,工资,城市 from 仓库,职工
  where 仓库.仓库号=职工.仓库号 and  工资>1800 and 面积>900
go
use db_business 
go
select * from db_modview