use db_business 
go
select * ,(select avg(����) from ְ��) as ƽ������  
from ְ��


use db_business 
go
select * ,
����-(select avg(����) from ְ��) as ������ƽ������֮��  
from ְ��



use db_business 
go
select * ,����-(select avg(����) from ְ��) as ������ƽ������֮�� , 
�������� =
case
   when abs(����-(select avg(����) from ְ��))>300 then '���ʲ���'
   when abs(����-(select avg(����) from ְ��))>=100 then '���ʲ��һ��'
   when abs(����-(select avg(����) from ְ��))<100 then '���ʲ��С'
end
from ְ��

use db_business 
go
select * , 
��ͬ�ֿ��ƽ������ =
case
   when �ֿ��='wh1' then  (select avg(����) from ְ�� where �ֿ��='wh1')
   when �ֿ��='wh2' then  (select avg(����) from ְ�� where �ֿ��='wh2')
   when �ֿ��='wh3' then  (select avg(����) from ְ�� where �ֿ��='wh3')
   when �ֿ��='wh4' then  (select avg(����) from ְ�� where �ֿ��='wh4')
end,
���������Ӧ�Ĳֿ��ƽ������֮�� =
case
   when �ֿ��='wh1' then  ����-(select avg(����) from ְ�� where �ֿ��='wh1')
   when �ֿ��='wh2' then  ����-(select avg(����) from ְ�� where �ֿ��='wh2')
   when �ֿ��='wh3' then  ����-(select avg(����) from ְ�� where �ֿ��='wh3')
   when �ֿ��='wh4' then  ����-(select avg(����) from ְ�� where �ֿ��='wh4')
end
from ְ��











