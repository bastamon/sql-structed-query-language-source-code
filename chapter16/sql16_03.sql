begin transaction 
insert into hyuser (hyname ,hypwd ) values
  ('liping','6666')
insert into hyuser (hyname ,hypwd ) values
  ('zhanghong','8888')
 save transaction my_tran1

use db_business 
go
select * from hyuser

delete from hyuser where hyname ='zhanghong'
 insert into hyuser (hyname ,hypwd ) values
  ('gaoping','5555')
  insert into hyuser (hyname ,hypwd ) values
  ('wangzhen','9999')
  save transaction my_tran2
use db_business 
go
select * from hyuser


delete from hyuser 
rollback transaction my_tran2



delete from hyuser 
rollback transaction my_tran1
go
select * from hyuser






