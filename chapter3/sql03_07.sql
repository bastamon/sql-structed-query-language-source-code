use db_mysql 
go
create table db_table7
(
  �ֿ��� int primary key,
  �ֿ��   varchar(50) unique,
  ����     varchar(50) ,
  ���     int  check(���>=600 and ���<=1800)
)
