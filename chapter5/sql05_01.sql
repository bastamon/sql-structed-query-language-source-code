use db_business 
go
select 姓名,工资 from 职工

use db_business 
go
select 姓名,
CAST(工资 as money) as 工资转换为货币类型  from 职工

use db_business 
go
select 姓名,
'￥' +cast(CAST(工资 as money) as varchar(10))  as 工资转换为货币类型并添加货币符号  from 职工