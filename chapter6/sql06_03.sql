use db_business 
go
select MAX(����) as ְ�������
,MIN(����)as ְ����С���� from ְ��

use db_business 
go
select MAX(����) as wh2�ֿ������
,MIN(����)as wh2�ֿ�ְ����С���� ,
(MAX(����)-MIN(����)) as ���ʲ�
from ְ��  where �ֿ��='wh2'



use db_business 
go
select (MAX(����)-MIN(����)) as ���ʲ�, ��������=
case
  when (MAX(����)-MIN(����))>300 then '���ʲ���'
  when (MAX(����)-MIN(����))<=300 then '���ʲ�𲻴�'
end 
from ְ�� 



use db_business 
go
select * from ְ�� where ����>
(select MAX(����) from ְ�� where �ֿ��='wh1')






