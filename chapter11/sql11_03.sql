use db_business 
go
create view db_view6 
as
select �ֿ��,ְ����,����,����,
  (select avg(����) from ְ��) as ����ְ����ƽ������ from ְ��
  
  
  
use db_business 
go
create view db_view7 
as
select ����,����,
  (select avg(����) from ְ��) as ����ְ����ƽ������ ,
  (select avg(����) from ְ�� where �ֿ��= a.�ֿ��) 
  as ��ͬ�ֿ��ƽ������,
  ����-(select avg(����) from ְ�� where �ֿ��=a.�ֿ��) 
  as ְ�����������ڲֿ��ƽ������֮��
  from ְ�� a
