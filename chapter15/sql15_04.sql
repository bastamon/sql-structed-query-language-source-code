use db_business 
go
select name,crdate  from sysobjects where type ='tr'


use db_business 
go
execute sp_help db_trigger1


use db_business 
go
execute sp_depends db_trigger1



use db_business 
go
execute sp_helptext db_trigger1






