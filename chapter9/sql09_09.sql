use db_business 
go
update ְ������ set ����=(����-100)*2 where �ֿ�� in
   (select �ֿ�� from �ֿⱸ�� where ����='����')
   
use db_business 
go
update �ֿⱸ�� set ���=���+80 where ���<
  ( select MIN(���) from �ֿⱸ�� where ����='����')

use db_business 
go
update ְ������ set ����=����-66 where ����> all(
   select AVG(����) from ְ������ group by �ֿ��)