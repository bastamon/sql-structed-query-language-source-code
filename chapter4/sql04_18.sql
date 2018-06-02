use db_business 
go
select * from 职工 
where 姓名 like '_平' or 姓名 like '平_'

use db_business 
go
select * from 职工 where 姓名 not like '_平%'
    and 姓名  like '%平%'