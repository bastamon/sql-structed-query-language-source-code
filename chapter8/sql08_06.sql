use db_business 
go
select ����,����,(select AVG(����) from ְ��)as ƽ������,��� 
from ְ��, ������ where  ְ��.ְ���� =������.ְ���� 
and ����>= (select AVG(����) from ְ��)


use db_business 
go
select ����,����, ����-(select avg(����) from ְ��) as ��ƽ�����ʵĲ�,
  ��� from ְ��, ������ 
  where  ְ��.ְ���� =������.ְ���� 
  and abs(����-(select avg(����) from ְ��))>400
  
use db_business 
go
  select ����,����, ��� from ְ��, ������ 
  where  ְ��.ְ���� =������.ְ���� 
   and ����>all( select avg(����) from ְ�� group by �ֿ��)

