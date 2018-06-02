use db_mysql 
go
create table db_table7
(
  仓库编号 int primary key,
  仓库号   varchar(50) unique,
  城市     varchar(50) ,
  面积     int  check(面积>=600 and 面积<=1800)
)
