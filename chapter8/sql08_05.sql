use db_business 
go
select ����,����,���,���,
     (����+���/1000) as ʵ������ from ְ��,�ֿ�,������
     where ְ��.�ֿ�� = �ֿ�.�ֿ�� and ְ��.ְ���� =������.ְ����
     
     
use db_business 
go
select ����,����,����,(select AVG(����) from ְ��) as ƽ������,
   (����-(select AVG(����) from ְ��)) as ��ƽ������֮��
   from ְ��,�ֿ� where �ֿ�.�ֿ��=ְ��.�ֿ��
