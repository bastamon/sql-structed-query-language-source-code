use db_business 
go
select ����,���� ,��ͬ�ֿ��ƽ������ from 
(select * , 
��ͬ�ֿ��ƽ������ =
case
   when �ֿ��='wh1' then  (select avg(����) from ְ�� where �ֿ��='wh1')
   when �ֿ��='wh2' then  (select avg(����) from ְ�� where �ֿ��='wh2')
   when �ֿ��='wh3' then  (select avg(����) from ְ�� where �ֿ��='wh3')
   when �ֿ��='wh4' then  (select avg(����) from ְ�� where �ֿ��='wh4')
end
from ְ��) mytable
