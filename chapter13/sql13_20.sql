use db_business 
go
create function dbo.db_fun2()
returns table
as
return(select * from  �ֿ� )

use db_business 
go
select * from dbo.db_fun2()

use db_business 
go
create function dbo.db_fun3(@t varchar(50))
returns table
as
return(select * from  ְ�� where �ֿ��=@t)

use db_business 
go
select * from dbo.db_fun3('wh1')



