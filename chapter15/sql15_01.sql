use db_business 
go
create trigger db_trigger1 on �ֿⱸ�� for update
as
begin
  if Exists(select * from sys.sysobjects  where id=OBJECT_ID('db_tabletriuser'))
    drop table db_tabletriuser
  else
  begin
     create table db_tabletriuser(
         userid  int identity(1,1) primary key,
         username  varchar(50),
         userpwd   varchar(50)
      )
    insert into db_tabletriuser(username,userpwd) values('hy1','111')
    insert into db_tabletriuser(username,userpwd) values('hy2','222')
    insert into db_tabletriuser(username,userpwd) values('hy3','333')
   end
end

go

use db_business 
go
update �ֿⱸ�� set ���=���-100 where �ֿ��='wh1'

