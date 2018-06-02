create database db_trig

use db_trig 
go
create table ��¼��־��
(
  ��־���     int identity(1,1) primary key,
  �¼�         varchar(600) null,
  �������     varchar(8000)  null,
  ������       varchar(60)  null,
  ����ʱ��     datetime     null
)

use db_trig 
go
create trigger db_DDL_trigger3
on database 
for DDL_Database_level_Events
as
begin
   declare  @log xml
   set @log =Eventdata()
   insert into ��¼��־��(�¼�,�������,������,����ʱ��) values
   (
     @log.value('(/Event_Instance/EventType)[1]','nvarchar(100)'),
     @log.value('(/Event_Instance/TSQLCommand)[1]','nvarchar(2000)'),
     Convert(nvarchar(100),Current_user),
     Getdate()
   )
end

use db_trig
go
create table db_table2
(
  �ֿ���  int not null,
  �ֿ��   varchar(50) not null,
  ����     varchar(50) not null,
  ���     int
)

use db_trig
go
select * from ��¼��־��





