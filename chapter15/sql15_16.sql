create trigger db_update_trigger on �ֿ� for update
as
begin
  declare @old char(10)
  declare @new char(10)
  select @new=�ֿ�� from inserted
  select @old=�ֿ�� from deleted
  update ְ�� set �ֿ��=@new where �ֿ��=@old
end

use db_business
go
update �ֿ� set �ֿ��='modifywh2' where �ֿ��='wh2'
