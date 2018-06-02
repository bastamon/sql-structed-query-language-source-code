create trigger db_DDL_trigger2
on all server
for drop_database
as
begin
  print '不能删除当前服务器中的任何数据库'
  rollback
end
go

drop database  db_business