use db_business 
go
SELECT name,create_date  FROM sys.triggers Where parent_class = 0 

use db_business 
go
alter trigger db_DDL_trigger1
on database
for Create_table,Alter_table
as
begin
  print '不能修改和删除当前数据库中的数据表！'
  rollback
end

use db_business 
go
drop trigger db_DDL_trigger1 on Database;

drop trigger db_DDL_trigger2 on all server

