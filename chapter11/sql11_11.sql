use db_business 
go
select ����,(select avg(����) from ְ�� where �ֿ��= a.�ֿ��)as ��ͬ�ֿ��ƽ������,
       (select avg(���) from ������ where ְ����= b.ְ����)as ��ְͬ����ƽ�����,
        (select AVG(���) from �ֿ�) as ƽ�����
from �ֿ�,ְ�� a,������ b where  �ֿ�.�ֿ��= a.�ֿ�� and a.ְ���� =b.ְ���� and
   (select avg(���) from ������ where ְ����= b.ְ����)<10000 and
   (select avg(����) from ְ�� where �ֿ��= a.�ֿ��)>1600
   
   
use db_business 
go 
select ����,��ͬ�ֿ��ƽ������,��ְͬ����ƽ�����,ƽ����� from ������ͼ����ͼ 
where ��ͬ�ֿ��ƽ������>1600 and ��ְͬ����ƽ�����<10000