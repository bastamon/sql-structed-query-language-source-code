use db_business 
go
create procedure  proc_sql2
as
begin
  select * from ְ�� where ����>2000
end
go
execute proc_sql2

use db_business 
go
create procedure  proc_sql3
as
begin
   select * from ְ�� where 
    ����>(select max(����) from ְ�� where �ֿ��='wh1') and
    ����>all(select avg(����) from ְ�� group by �ֿ��)    
end
go
execute proc_sql3

use db_business 
go
create procedure  proc_sql4
as
begin
   select * from ְ�� where ���� like '%��%'
   select * from �ֿ� where �ֿ�� in(
     select �ֿ�� from ְ�� where ���� like '%��%' )
end
go
execute proc_sql4










