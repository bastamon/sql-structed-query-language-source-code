use db_business 
go
select �ֿ�� from �ֿ� where ���� ='����'
except 
select �ֿ�� from ְ�� where ����>1900



use db_business 
go
select �ֿ�� from �ֿ� where ���� ='����' and �ֿ�� not in (
      select �ֿ�� from ְ�� where ����>1900)

use db_business 
go
select �ֿ�� from ְ�� where ����>1900
except 
select �ֿ�� from �ֿ� where ���� ='����'

use db_business 
go
select distinct �ֿ�� from ְ�� where ����>1900 
   and �ֿ�� not in (select �ֿ�� from �ֿ� where ���� ='����')