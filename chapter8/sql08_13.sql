use db_business 
go
select �ֿ�� from �ֿ� where ���� ='����'
union
select �ֿ�� from ְ�� where ����>2000

use db_business 
go
select distinct �ֿ�.�ֿ�� from �ֿ�,ְ�� where �ֿ�.�ֿ��= ְ��.�ֿ��
   and (���� ='����' or ����>2000)
   
   
use db_business 
go
select �ֿ�� from �ֿ� where ���� ='����' or �ֿ�� in (
      select �ֿ�� from ְ�� where ����>2000)

use db_business 
go
select �ֿ��,��� as ����͹��� from �ֿ� where ���� ='����'
union
select �ֿ��,����  as ����͹��� from ְ�� where ����>2000

use db_business 
go
select �ֿ��,��� as ����͹��� from �ֿ� where ���� ='����'
union
select �ֿ��,����  as ����͹��� from ְ�� where ����>2000
order by �ֿ�� ASC

use db_business 
go
select �ֿ�� from �ֿ� where ���� ='����'
union all
select �ֿ�� from ְ�� where ����>2000

