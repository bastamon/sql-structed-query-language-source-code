use db_business 
go
create proc proc_sql7 
  @mingz int,
  @maxgz int
 as
  select * from ְ�� where ���� between @mingz and @maxgz

go
execute proc_sql7 1500,1800

use db_business 
go
create proc proc_sql8 
  @chengshi varchar(50)
 as
 begin
  select * from �ֿ� where ���� = @chengshi
  select * from ְ�� where �ֿ�� in (
    select �ֿ�� from �ֿ� where ���� = @chengshi)
 end
go
execute proc_sql8 '����' 






