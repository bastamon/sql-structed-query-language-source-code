use db_business 
go
create view db_viewtrigger
as
select 仓库.仓库号,职工号,姓名,工资,面积 from 仓库,职工 where 
   仓库.仓库号 =职工.仓库号
   
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
   select @ckhao = 仓库号,@zghao=职工号,@sname=姓名,@gz=工资,@mj=面积 from inserted
   insert into 仓库(仓库号,面积) values (@ckhao,@mj)
   insert into 职工(仓库号,职工号,姓名,工资) values (@ckhao,@zghao,@sname,@gz)
end


use db_business 
go
insert into db_viewtrigger(仓库号,职工号,姓名,工资,面积) 
        values ('wh0101','zg0101','触发器',1888,888)
        
        
        
        
        
        
 use db_business 
 go
 select * from 仓库
 select * from 职工
 
 
use db_business 
 go
 select * from db_viewtrigger






