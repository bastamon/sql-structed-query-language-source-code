alter database db_modsql
add file
 (
	name=db_modsql_new,
    filename='e:\mydata\db_modsql_new.mdf',
    size=3,
    maxsize=8,            
    filegrowth=10% 
   )
 go
execute sp_helpdb db_modsql