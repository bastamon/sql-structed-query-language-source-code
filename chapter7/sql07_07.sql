use db_business 
go
select * from ְ�� where ����>any(
        select ���� from ְ�� where �ֿ��='wh2')

use db_business 
go       
select * from ְ�� where ���� >(
   select min(����) from ְ�� where �ֿ��='wh2')
   
use db_business 
go
select * from ְ�� where ����<any(
        select ���� from ְ�� where �ֿ��='wh2')

use db_business 
go
select * from ְ�� where ����<=(
   select max(����) from ְ�� where �ֿ��='wh2')
   
   
use db_business 
go
select * from ְ�� where ����=any(
        select ���� from ְ�� where �ֿ��='wh1') and �ֿ��!='wh1'
        
 use db_business 
go
select * from ְ�� where ���� in (
        select ���� from ְ�� where �ֿ��='wh1') and �ֿ��!='wh1'

use db_business 
go
select * from ְ�� where ����>any(
        select ���� from ְ�� where ���� like '%��%') 
        and ���� like '%ƽ%'



