use db_business 
go
select * from ְ�� where ����>=ALL(
   select ���� from ְ�� where �ֿ��='wh2')
   
use db_business 
go   
select * from ְ�� where ����>=(
   select MAX(����) from ְ�� where �ֿ��='wh2')
   
   
use db_business 
go
select * from ְ�� where ����<=ALL(
   select ���� from ְ�� where �ֿ��='wh2')

use db_business 
go   
select * from ְ�� where ����<=(
   select min(����) from ְ�� where �ֿ��='wh2')