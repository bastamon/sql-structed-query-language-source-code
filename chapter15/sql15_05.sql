use db_business 
go
alter trigger db_trigger1 on 仓库备份 for update          
as
begin
  if Exists(select * from sys.sysobjects  where id=OBJECT_ID('db_tabletriuser')) 
   --利用If语句判断要创建的数据表是否存在，如果存在，则要先删除
    drop table db_tabletriuser
  else                --如果不存在，则创建数据表
  begin
     create table db_tabletriuser(
         userid  int identity(1,1) primary key,
         username  varchar(50),
         userpwd   varchar(50)
      )
    insert into db_tabletriuser (username,userpwd) values('hy1','111')   --向数据表中插入四条记录
    insert into db_tabletriuser (username,userpwd) values('hy2','222')
    insert into db_tabletriuser (username,userpwd) values('hy3','333')
    insert into db_tabletriuser (username,userpwd) values('hy4','444')
   end
end







use db_business 
go
execute sp_helptext db_trigger1


