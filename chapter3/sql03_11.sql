use db_mysql 
go
create table db_table11
(
  仓库编号 int identity(1,1) primary key,
  仓库号   varchar(50) collate french_CI_AI not null,
  城市     varchar(50) default '青岛',
  面积     int  check(面积>=300 and 面积<=1800)
)
