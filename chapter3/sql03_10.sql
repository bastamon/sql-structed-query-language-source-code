use db_mysql 
go
create table db_table10 
(
  �ֿ��� int identity(1,1) primary key,
  �ֿ��   varchar(50) unique,
  ����     varchar(50) default '�ൺ',
  ���     int  check(���>=300 and ���<=1800)
)

