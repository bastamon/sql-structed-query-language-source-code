use db_mysql 
go
execute sp_help

use db_mysql 
go
execute sp_help db_table3

use db_mysql 
go
SELECT * FROM sysobjects WHERE type = 'U' 
