use db_business 
go
select �ֿ�� from �ֿ� where ���� ='����'
Intersect 
select �ֿ�� from ְ�� where ����>1500

use db_business 
go
select distinct �ֿ�.�ֿ�� from �ֿ�,ְ�� where �ֿ�.�ֿ��= ְ��.�ֿ��
   and (���� ='����' and ����>1500)
   
   
   
use db_business 
go
select �ֿ�� from �ֿ� where ���� ='����' and �ֿ�� in (
      select �ֿ�� from ְ�� where ����>1500)

