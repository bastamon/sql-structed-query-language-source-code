
create trigger db_insert_trigger on �ֿ� for insert
as
begin
  declare @t varchar(10)
  select @t=�ֿ�� from inserted
  insert into ְ��(�ֿ��) values(@t)
end

use db_business 
go
insert into �ֿ�(�ֿ��,����,���,����ʱ��) values(
  'wh105','�Ϻ�',800,'2002-05-06')
