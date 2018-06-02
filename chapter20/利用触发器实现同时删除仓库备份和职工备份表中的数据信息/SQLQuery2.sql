use db_business 
go
create trigger db_trigger1 on 仓库备份 for delete
as
begin
  declare @t varchar(10)
  select @t=仓库号 from  deleted
  delete from 职工备份 where 仓库号=@t
end
