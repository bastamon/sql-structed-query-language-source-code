use db_business 
go
select SUM(����) as ���ʺ� from ְ�� 

use db_business 
go
select SUM(����) as wh1�ֿ⹤�ʺ� 
from ְ�� where �ֿ��='wh1'


use db_business 
go
select SUM(����) as ���������Ĺ��ʺ� from ְ�� 
where �ֿ�� in ( select �ֿ�� from �ֿ�
 where ����='����')
 
 
use db_business 
go
select count(*) as wh2�ֿ�����,
SUM(����) as wh2�ֿ⹤�ʺ� 
from ְ�� where �ֿ��='wh2'

use db_business 
go
select SUM(����) as ���ʺ�,COUNT(*) as ְ������
from ְ�� where  ����>(select SUM(����)/COUNT(*) 
from ְ��)





 
 
 
 