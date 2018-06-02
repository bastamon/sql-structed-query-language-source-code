use db_business 
go
select * from ¶©¹ºµ¥ where ¶©¹ºÈÕÆÚ>dateadd(year,-4,getdate())

use db_business 
go
select * from ¶©¹ºµ¥ where ¶©¹ºÈÕÆÚ>datediff(day,4*360,getdate())