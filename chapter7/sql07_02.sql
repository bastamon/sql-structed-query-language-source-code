use db_business 
go
select * from �ֿ� where ���<>(
   select MIN(���) from �ֿ�)
 
use db_business 
go
select * from ְ��  where ����!> (
  select AVG(����) from ְ�� 
  where �ֿ��='wh1' or �ֿ��='wh2' )
   