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
  print '�����޸ĺ�ɾ����ǰ���ݿ��е����ݱ�'
  rollback
end

use db_business 
go
drop trigger db_DDL_trigger1 on Database;

drop trigger db_DDL_trigger2 on all server

