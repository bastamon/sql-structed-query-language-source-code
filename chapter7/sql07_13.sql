use db_business 
go
select * from ְ�� where ����>all
  (select AVG(����) from ְ�� group by �ֿ��)
  
  
use db_business 
go
select * from ְ�� where ����>any
  (select AVG(����) from ְ�� group by �ֿ��)
  
  
  use db_business 
go
select * from �ֿ� where �ֿ�� in(
 select �ֿ�� from ְ�� where ����>all
  (select AVG(����) from ְ�� group by �ֿ��))

  
  