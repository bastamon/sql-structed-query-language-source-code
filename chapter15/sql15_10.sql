use db_business 
go
create trigger db_DDL_trigger1
on database
for drop_table,Alter_table
as
begin
  print '不能修改和删除当前数据库中的数据表！'
  rollback
end

use db_business 
go
drop table 仓库备份