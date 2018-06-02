use db_business 
go
select  * from 职工 order by 工资 asc

use db_business 
go
select  * from 职工 order by 仓库号 asc

use db_business 
go
select  * from 职工 
order by 姓名 collate chinese_prc_stroke_cs_as_ks_ws asc

use db_business 
go
select  * from 职工 
order by 姓名 collate chinese_prc_cs_as asc

