create trigger db_update_trigger on ²Ö¿â for update
as
begin
  declare @old char(10)
  declare @new char(10)
  select @new=²Ö¿âºÅ from inserted
  select @old=²Ö¿âºÅ from deleted
  update Ö°¹¤ set ²Ö¿âºÅ=@new where ²Ö¿âºÅ=@old
end

use db_business
go
update ²Ö¿â set ²Ö¿âºÅ='modifywh2' where ²Ö¿âºÅ='wh2'
