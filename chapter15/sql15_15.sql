
create trigger db_insert_trigger on 仓库 for insert
as
begin
  declare @t varchar(10)
  select @t=仓库号 from inserted
  insert into 职工(仓库号) values(@t)
end

use db_business 
go
insert into 仓库(仓库号,城市,面积,创建时间) values(
  'wh105','上海',800,'2002-05-06')
