use db_business 
go
select * from �ֿ� 
     where  exists (select * from ְ�� where  �ֿ��=�ֿ�.�ֿ��)

use db_business 
go
select * from �ֿ� 
     where  exists (select * from ְ�� where  �ֿ��=�ֿ�.�ֿ�� 
     and ����>2000)



use db_business 
go
select * from �ֿ� 
     where  exists (select * from ְ�� where  �ֿ��=�ֿ�.�ֿ�� 
     )  and ���� is not null
use db_business 
go
select * from �ֿ� 
     where  not exists (select * from ְ�� where  �ֿ��=�ֿ�.�ֿ�� ) 