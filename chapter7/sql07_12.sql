use db_business 
go
select * from 
  (select �ֿ��,AVG(����)as ƽ������, (SUM(����)/AVG(����))as ְ������,
    MAX(����) as ����� from ְ�� group by �ֿ��) mytab
    order by ƽ������

use db_business 
go
select * from 
  (select �ֿ��,AVG(����)as ƽ������, (SUM(����)/AVG(����))as ְ������,
    MAX(����) as ����� from ְ�� group by �ֿ�� having AVG(����)>1700) mytab