use db_business 
go
Create trigger db_delete_trigger on 职工 for delete
as
begin
  declare @t varchar(10)
  select @t=职工号 from deleted
  delete from 订购单 where 职工号=@t
end

use db_business 
go
delete from  职工 where 职工号 ='zg5'

