create trigger db_Text_trigger1 on �ֿ� for delete
as
begin
  declare @t varchar(10)
  select @t=�ֿ�� from  deleted
  delete from ְ�� where �ֿ��=@t
end
use db_business
go
create trigger db_Text_trigger2 on ְ�� for delete
as
begin
  delete from ������ where ְ���� in (select ְ���� from deleted)
end

use db_business
go
delete from �ֿ� where �ֿ��='wh1'





