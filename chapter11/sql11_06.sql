use db_business 
go
create view db_view8(职工姓名,职工月工资)
as
select 姓名,工资 from 职工
go
use db_business 
go
select * from db_view8