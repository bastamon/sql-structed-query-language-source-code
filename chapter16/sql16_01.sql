set transaction isolation level
repeatable read
begin transaction
use db_business 
go
select * from ְ�� where ְ���� in
 (select ְ���� from ������ where ���>15000)
 and �ֿ�� in (select �ֿ�� from �ֿ� where ����!='�ൺ')
 and ����>1500
 commit transaction
