use db_business 
go
create function dbo.db_fun2()
returns table
as
return(select * from  ²Ö¿â )

use db_business 
go
select * from dbo.db_fun2()

use db_business 
go
create function dbo.db_fun3(@t varchar(50))
returns table
as
return(select * from  Ö°¹¤ where ²Ö¿âºÅ=@t)

use db_business 
go
select * from dbo.db_fun3('wh1')



