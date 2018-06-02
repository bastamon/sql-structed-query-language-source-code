use db_business 
go
update 职工备份 set 工资=1200 where 仓库号='wh1'

use db_business 
go
select * from 职工备份 order by 仓库号

use db_business 
go
update 职工备份 set 工资=工资+288 where 仓库号='wh1' and
   姓名 like '%平%'
go
select * from 职工备份 order by 仓库号