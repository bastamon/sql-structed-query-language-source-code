use db_business 
go
create trigger db_trigger1 on �ֿⱸ�� for delete
as
begin
  declare @t varchar(10)
  select @t=�ֿ�� from  deleted
  delete from ְ������ where �ֿ��=@t
end
