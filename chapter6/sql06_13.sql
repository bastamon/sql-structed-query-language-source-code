use db_business 
go
select �ֿ��,max(����) as ��ͬ�ֿ�������,min(����) as ��ͬ�ֿ����С����,
   (max(����)-min(����)) as ��ͬ�ֿ�����������С����֮��
  from ְ�� where ����>1900
group by �ֿ��

use db_business 
go
select �ֿ��,max(����) as ��ͬ�ֿ�������,min(����) as ��ͬ�ֿ����С����,
   (max(����)-min(����)) as ��ͬ�ֿ�����������С����֮��
  from ְ�� where ����>1900
group by all �ֿ��




use db_business 
go
select �ֿ��,�Ա�,AVG(����) as ��ͬ�ֿ��ƽ������  from ְ�� 
  where �Ա� is not null 
group by  all �ֿ��,�Ա�









