use db_business 
go
select * , 
��ͬ�ֿ������� =
case
   when �ֿ��='wh1' then  (select max(����) from ְ�� where �ֿ��='wh1')
   when �ֿ��='wh2' then  (select max(����) from ְ�� where �ֿ��='wh2')
   when �ֿ��='wh3' then  (select max(����) from ְ�� where �ֿ��='wh3')
   when �ֿ��='wh4' then  (select max(����) from ְ�� where �ֿ��='wh4')
end
from ְ�� order by ��ͬ�ֿ�������



use db_business 
go
select * , 
��ͬ�ֿ�����������С����֮�� =
case
   when �ֿ��='wh1' then  (select (max(����)-MIN(����)) from ְ�� where �ֿ��='wh1')
   when �ֿ��='wh2' then  (select (max(����)-MIN(����)) from ְ�� where �ֿ��='wh2')
   when �ֿ��='wh3' then  (select (max(����)-MIN(����)) from ְ�� where �ֿ��='wh3')
   when �ֿ��='wh4' then  (select (max(����)-MIN(����)) from ְ�� where �ֿ��='wh4')
end
from ְ�� order by ��ͬ�ֿ�����������С����֮�� desc





use db_business 
go
select * , 
ʵ������ =
case
   when ����> (select avg(����) from ְ��) then  ����*0.90
   when ����= (select avg(����) from ְ��) then  ����
   when ����< (select avg(����) from ְ��) then  ����*1.1
end
from ְ�� order by ʵ������ asc








