/*Or�����*/
use db_business
go 
select * from �ֿ� where ����='����' or ����='�ൺ'
/*In�����*/
use db_business
go 
select * from �ֿ� where ���� in('����' ,'�ൺ')



/*not�����*/
use db_business
go  
select * from �ֿ� where ���� not in('����')
/*�Ƚ������*/
use db_business
go  
select * from �ֿ� where ����!='����'



/*ʹ��distinct�ؼ���*/
use db_business
go
select distinct * from �ֿ� where ���>900
/*��ʹ��distinct�ؼ���*/
use db_business
go
select  * from �ֿ� where ���>900






