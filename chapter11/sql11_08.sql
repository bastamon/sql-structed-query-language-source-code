use db_business 
go
create view db_modview
as 
select ����,����,��� from �ֿ�,ְ�� where �ֿ�.�ֿ��=ְ��.�ֿ��
go
use db_business 
go
select * from db_modview

use db_business 
go
alter view db_modview
as 
select ����,�Ա�,����,���� from �ֿ�,ְ��
  where �ֿ�.�ֿ��=ְ��.�ֿ�� and  ����>1800 and ���>900
go
use db_business 
go
select * from db_modview