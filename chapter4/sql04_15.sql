use db_business 
go
select * from ְ�� where ְ����='zg1' or ְ����='zg2' or
   ְ����='zg11' or ְ����='zg15'
   
use db_business 
go
 select * from ְ�� where  
 ְ���� in('zg1','zg2','zg11','zg15')
 
 
 
 
 use db_business 
go
 select * from ְ�� where  
 ְ���� not in('zg1','zg2','zg11','zg15')
 
use db_business 
go
select * from �ֿ� where �ֿ�� in
  (select �ֿ�� from ְ��)
  
use db_business 
go
select * from �ֿ� where �ֿ�� not in
  (select �ֿ�� from ְ��)

  
  
 
 
 
 

   
