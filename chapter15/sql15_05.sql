use db_business 
go
alter trigger db_trigger1 on �ֿⱸ�� for update          
as
begin
  if Exists(select * from sys.sysobjects  where id=OBJECT_ID('db_tabletriuser')) 
   --����If����ж�Ҫ���������ݱ��Ƿ���ڣ�������ڣ���Ҫ��ɾ��
    drop table db_tabletriuser
  else                --��������ڣ��򴴽����ݱ�
  begin
     create table db_tabletriuser(
         userid  int identity(1,1) primary key,
         username  varchar(50),
         userpwd   varchar(50)
      )
    insert into db_tabletriuser (username,userpwd) values('hy1','111')   --�����ݱ��в���������¼
    insert into db_tabletriuser (username,userpwd) values('hy2','222')
    insert into db_tabletriuser (username,userpwd) values('hy3','333')
    insert into db_tabletriuser (username,userpwd) values('hy4','444')
   end
end







use db_business 
go
execute sp_helptext db_trigger1


