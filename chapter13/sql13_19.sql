use db_business 
go
create function db_fun1(@x int) 
returns int
as
begin
   declare @y int
   set @y=@x*@x
   return @y
end
go
print dbo.db_fun1(7)


declare @x1 int
set @x1=1
while  @x1<=7
begin
  select cast(@x1 as varchar(50))+'*'+cast(@x1 as varchar(50)) as ����ʽ,
  dbo.db_fun1(@x1)as �˷���� 
  set @x1=@x1+1
end

use db_business 
go
select ְ��.*,dbo.db_fun1(����) as ���ʵ�ƽ�� from ְ��





