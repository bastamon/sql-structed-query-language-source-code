use db_business 
go
select COUNT(*) as �ֿ����,max(���) as ���ֿ����,
min(���) as ��С�ֿ����, SUM(���) as �ֿ����֮��,
AVG(���) as �ֿ����ƽ��ֵ from �ֿ�

use db_business 
go
select * from �ֿ� where ���>
(select avg(���) from �ֿ�)

use db_business 
go
select AVG(����) as ƽ������ from ְ�� where ����!=(
  select MAX(����) from ְ��)

use db_business 
go
select AVG(����) as ƽ������ from ְ�� where ����
  not in ( (select MAX(����) from ְ��),
  (select min(����) from ְ��))





