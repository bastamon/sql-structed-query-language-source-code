use db_business 
go
create view 不同城市工资统计信息视图
as
select 城市,AVG(工资) as 不同城市平均工资,MAX(工资) as 不同城市最大工资 
from 基于视图的视图 group by 城市

use db_business 
go
select * from  不同城市工资统计信息视图

use db_business 
go
create view 不同城市销售金额统计信息视图
as
select 城市,AVG(金额) as 不同城市平均销售金额,MAX(金额) as 不同城市最大销售金额 
from 基于视图的视图 group by 城市

use db_business 
go
select * from  不同城市销售金额统计信息视图






