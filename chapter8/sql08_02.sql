use db_business 
go
select ����,����,���� from ְ��,�ֿ� where ְ��.�ֿ�� =�ֿ�.�ֿ��  
   and ����>=1500 and ����<=2000 and ����='����'
   
use db_business 
go  
select ����,����,���� from ְ��,�ֿ� where ְ��.�ֿ�� =�ֿ�.�ֿ��  
   and (���� between 1500 and 2000 )and ����='����'
   
   
use db_business 
go 
select ����,����,���� from ְ��,�ֿ� where ְ��.�ֿ�� =�ֿ�.�ֿ��  
   and  not(���� between 1500 and 2000 )and ���� is null
 
   
   
