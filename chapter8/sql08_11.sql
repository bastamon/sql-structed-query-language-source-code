use db_business 
go
select ����,���� from �ֿ� full join ְ�� on ְ��.�ֿ��=�ֿ�.�ֿ�� 
  and ���� is not null and ����  like '%��%'

use db_business 
go
select ����,���,����,����,��� from  �ֿ�
   full join ְ�� on  ְ��.�ֿ��=�ֿ�.�ֿ��
   full join  ������ on ְ��.ְ����=������.ְ���� 
   and ����>1800 and ���<1000 and ���!=16600
