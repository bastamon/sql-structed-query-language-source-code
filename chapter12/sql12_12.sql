Alter procedure proc_sql1
as
select ����,����,(select max(����) from ְ��) as �����
from ְ�� where ����  like '%ƽ%'

use db_business 
go
execute sp_helptext proc_sql1
