use db_business 
go
select �ֿ��,COUNT(�ֿ��) as ְ������,AVG(����) as ƽ������ ,AVG(���) as ƽ�����۽��
 from ������ͼ����ͼ group by �ֿ��
 
 use db_business 
go
select �ֿ��,COUNT(�ֿ��) as ְ������,AVG(����) as ƽ������ ,AVG(���) as ƽ�����۽��
 from ������ͼ����ͼ  where ����>1500
 group by �ֿ�� having COUNT(�ֿ��)<5 
 order by ƽ�����۽�� desc

 
 
 