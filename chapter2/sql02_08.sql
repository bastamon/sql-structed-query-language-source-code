alter database db_modsql
add log file
 (
	name=db_modsql_new_log,
    filename='e:\mydata\db_modsql_new_log.ldf',
    filegrowth=10%
   )
go
execute sp_helpdb db_modsql