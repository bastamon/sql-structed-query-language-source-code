create database db_trig

use db_trig 
go
create table 记录日志表
(
  日志编号     int identity(1,1) primary key,
  事件         varchar(600) null,
  所用语句     varchar(8000)  null,
  操作者       varchar(60)  null,
  发生时间     datetime     null
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
   insert into 记录日志表(事件,所用语句,操作者,发生时间) values
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
  仓库编号  int not null,
  仓库号   varchar(50) not null,
  城市     varchar(50) not null,
  面积     int
)

use db_trig
go
select * from 记录日志表





