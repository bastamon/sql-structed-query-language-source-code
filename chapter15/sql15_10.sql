use db_business 
go
create trigger db_DDL_trigger1
on database
for drop_table,Alter_table
as
begin
  print '�����޸ĺ�ɾ����ǰ���ݿ��е����ݱ�'
  rollback
end

use db_business 
go
drop table �ֿⱸ��