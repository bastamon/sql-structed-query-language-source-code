create trigger db_DDL_trigger2
on all server
for drop_database
as
begin
  print '����ɾ����ǰ�������е��κ����ݿ�'
  rollback
end
go

drop database  db_business