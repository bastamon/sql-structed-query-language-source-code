use db_business 
go
execute sp_rename db_fun2,db_myfun2


use db_business 
go
select name,refdate  from sysobjects where type ='if' or  type ='fn'
