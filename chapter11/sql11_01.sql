use db_business 
go
create view db_view1
as
select 仓库号,城市,面积 from 仓库

use db_business 
go
create view db_view2
as
select 姓名,工资 from 职工 where 工资>1800 


use db_business 
go
create view db_view3
as
select 姓名,工资,工资*0.1 as 奖金,(工资-800)*0.15 as 所得税,
    (工资+(工资*0.1)-((工资-800)*0.15)) as 实发工资
 from 职工 