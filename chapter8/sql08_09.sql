use db_business 
go
select ����,���� from �ֿ� left join ְ�� on ְ��.�ֿ��=�ֿ�.�ֿ�� 
  and ���� is not null and ����  like '%��%'
  
use db_business 
go
select ����,���,����,����,��� from  �ֿ�
   left join ְ�� on  ְ��.�ֿ��=�ֿ�.�ֿ��
   left join  ������ on ְ��.ְ����=������.ְ���� 
   and ����>1800 and ���<1000 and ���!=16600

  
  
  