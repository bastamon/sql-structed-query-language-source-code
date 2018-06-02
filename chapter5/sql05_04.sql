use db_business 
go
select 仓库号,创建时间 from 仓库

use db_business 
go
select 仓库号,
convert (char(10),创建时间,111 )as 创建日期 from 仓库