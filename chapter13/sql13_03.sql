declare @x real
set @x=0.34
print '���������Ǻ���ֵ��'
print '����ֵ��'+cast(sin(@x)as varchar(10))
print '����ֵ��'+cast(cos(@x)as varchar(10))
print '����ֵ��'+cast(tan(@x)as varchar(10))
print '����ֵ��'+cast(cot(@x)as varchar(10))

declare @x real
set @x=0.34
print '�����ķ����Ǻ���ֵ��'
print '������ֵ��'+cast(Asin(@x)as varchar(10))
print '������ֵ��'+cast(Acos(@x)as varchar(10))
print '������ֵ��'+cast(Atan(@x)as varchar(10))

use db_business 
go
select AVG(����)*1.0 as ƽ������,SUM(����) as ���ʺ�,
   (AVG(����)*1.0/SUM(����) ) as ƽ�������빤�ʺ͵ı�ֵ,
   SIN(AVG(����)*1.0/SUM(����)) as ƽ�������빤�ʺ͵ı���������ֵ,
   ASIN(AVG(����)*1.0/SUM(����)) as ƽ�������빤�ʺ͵ı����ķ�����ֵ
   from ְ�� group by �ֿ��



