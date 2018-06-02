use db_business 
go
update 仓库备份 set 创建时间='2007-7-7' 


use db_business 
go
update 职工备份 set 仓库号='10'+仓库号,姓名='2009'+姓名

use db_business 
go
select * from 职工备份