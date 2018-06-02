create trigger db_Text_trigger1 on ²Ö¿â for delete
as
begin
  declare @t varchar(10)
  select @t=²Ö¿âºÅ from  deleted
  delete from Ö°¹¤ where ²Ö¿âºÅ=@t
end
use db_business
go
create trigger db_Text_trigger2 on Ö°¹¤ for delete
as
begin
  delete from ¶©¹ºµ¥ where Ö°¹¤ºÅ in (select Ö°¹¤ºÅ from deleted)
end

use db_business
go
delete from ²Ö¿â where ²Ö¿âºÅ='wh1'





