use db_business 
go
create view db_viewtrigger
as
select �ֿ�.�ֿ��,ְ����,����,����,��� from �ֿ�,ְ�� where 
   �ֿ�.�ֿ�� =ְ��.�ֿ��
   
use db_business 
go
create trigger db_trigger3  on db_viewtrigger 
instead of insert
as
begin
   declare @ckhao varchar(10)
   declare @zghao varchar(10)
   declare @sname varchar(10)
   declare @gz  int
   declare @mj  int
   select @ckhao = �ֿ��,@zghao=ְ����,@sname=����,@gz=����,@mj=��� from inserted
   insert into �ֿ�(�ֿ��,���) values (@ckhao,@mj)
   insert into ְ��(�ֿ��,ְ����,����,����) values (@ckhao,@zghao,@sname,@gz)
end


use db_business 
go
insert into db_viewtrigger(�ֿ��,ְ����,����,����,���) 
        values ('wh0101','zg0101','������',1888,888)
        
        
        
        
        
        
 use db_business 
 go
 select * from �ֿ�
 select * from ְ��
 
 
use db_business 
 go
 select * from db_viewtrigger






