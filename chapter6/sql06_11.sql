
use db_business 
go
select �ֿ��,AVG(����) as ��ͬ�ֿ��ƽ������  from ְ�� 
group by  �ֿ�� having AVG(����)>1700
use db_business 
go
select �ֿ��,(max(����)-min(����)) as ��ͬ�ֿ�����������С����֮��
  from ְ�� group by  �ֿ��
  having (max(����)-min(����))>350

use db_business 
go
select �ֿ��,max(����) as ��ͬ�ֿ�������,min(����) as ��ͬ�ֿ����С����,
   (max(����)-min(����)) as ��ͬ�ֿ�����������С����֮��
  from ְ��  where ���� not like '%��%' 
group by  �ֿ�� 
having (max(����)-min(����))>350




