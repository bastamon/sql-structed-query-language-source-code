use db_business 
go
create view 加密视图
with encryption
as
select 仓库号,面积,城市 from 仓库