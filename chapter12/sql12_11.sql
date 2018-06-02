use db_business 
go
select name,crdate  from sysobjects where type ='p'
use db_business 
go
execute sp_help proc_sql1

use db_business 
go
execute sp_depends proc_sql2

use db_business 
go
execute sp_depends proc_sql1

use db_business 
go
execute sp_helptext proc_sql1






