use db_business 
go
begin tran
update �ֿⱸ�� set ���=���+88 where ����='����'
waitfor delay '0:00:10'
rollback tran

use db_business 
go
dbcc opentran