use db_business 
go
select * from �ֿ� where ��� =
  (select ��� from �ֿ� where �ֿ��='wh1')
  
  
use db_business 
go
select * from �ֿ� where �ֿ��!='wh1' and ��� =
  (select ��� from �ֿ� where �ֿ��='wh1')
  
 use db_business 
go
select * from �ֿ� where ��� =  (select max(���) from �ֿ� ) 