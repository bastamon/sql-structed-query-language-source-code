begin transaction update_data
use db_business 
go
update ְ������ set ����='�����޸�' where ְ����='zg2'
rollback transaction update_data

use db_business 
go
select * from ְ������



begin transaction update_data
use db_business 
go
update ְ������ set ����='�����޸�' where ְ����='zg2'
commit transaction update_data
go
select * from ְ������


