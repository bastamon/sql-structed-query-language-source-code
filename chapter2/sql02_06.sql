
execute sp_renamedb db_sqlserver1,db_modsql
go
SELECT * FROM sys.databases WHERE name = 'db_modsql'
