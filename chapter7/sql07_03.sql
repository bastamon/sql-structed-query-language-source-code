use db_business 
go
select * from ְ�� where ����>  ( select MAX(����) from ְ�� where �ֿ��='wh1')
  and ����<  (select MAX(����) from ְ�� where �ֿ��='wh2')
  
use db_business 
go
select * from �ֿ� where ���>(select AVG(���) from �ֿ� where ����='����')
  or ���<(select min(���) from �ֿ� where ����='����')
  
use db_business 
go
select * from ְ��  where ���� between (select AVG(����) from ְ�� where �ֿ��='wh1')
                               and  (select AVG(����) from ְ��) 
                               
use db_business 
go
select * from ְ��  where ���� not between (select AVG(����) from ְ��)
                               and (select AVG(����) from ְ�� where �ֿ��='wh2')
                                  

   