Alter procedure proc_sql1
as
select 姓名,工资,(select max(工资) from 职工) as 最大工资
from 职工 where 姓名  like '%平%'

use db_business 
go
execute sp_helptext proc_sql1
