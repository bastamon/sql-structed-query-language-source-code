use db_business 
go
select name,crdate  from sysobjects where type ='if' or  type ='fn'

use db_business 
go
execute sp_help db_fun1

use db_business 
go
execute sp_depends db_fun2




use db_business 
go
execute sp_depends db_fun1


use db_business 
go
execute sp_helptext db_fun1




