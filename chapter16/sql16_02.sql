begin transaction update_data
use db_business 
go
update 职工备份 set 姓名='事务修改' where 职工号='zg2'
rollback transaction update_data

use db_business 
go
select * from 职工备份



begin transaction update_data
use db_business 
go
update 职工备份 set 姓名='事务修改' where 职工号='zg2'
commit transaction update_data
go
select * from 职工备份


