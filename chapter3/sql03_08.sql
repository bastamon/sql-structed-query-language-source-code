use db_mysql 
go
create table db_table8
(
  �ֿ��� int primary key,
  �ֿ��   varchar(50) unique,
  ����     varchar(50) default '�ൺ',
  ���     int default 800 ,check(���>=600 and ���<=1800)
)