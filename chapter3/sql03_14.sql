use db_mysql 
go
execute sp_rename "db_table1", "db_renametable"
go
execute sp_help 