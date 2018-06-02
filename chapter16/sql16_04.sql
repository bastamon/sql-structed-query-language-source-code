begin transaction 
use db_business 
go
select * from ²Ö¿â with(holdlock)
waitfor delay '00:00:08'
commit transaction
