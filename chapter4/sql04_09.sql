use db_business 
go
select * from �ֿ� where ���!=900

use db_business 
go
select * from �ֿ� where ���<>900

/*����>=�������ʵ��*/
use db_business 
go
select * from ְ�� where ����>=2000
/*����!<�������ʵ��*/
use db_business 
go
select * from ְ�� where ����!<2000

/*����<=�������ʵ��*/
use db_business 
go
select * from ְ�� where ����<=1500
/*����!>�������ʵ��*/
use db_business 
go
select * from ְ�� where ����!>1500


use db_business 
go
select * from ������ where ְ���� in( 
select ְ���� from ְ�� where ����>2000)




