use db_mysql 
go
create table db_table5
(
  ְ����� int  primary key,
  ְ����   varchar(50) unique,
  �ֿ��     varchar(50),
  ����   int  
)
go
create table db_table6
(
  ������� int  primary key,
  ������   varchar(50) unique,
  ְ����   varchar(50) references db_table5(ְ����),
  �������� datetime,
  ���۽��  int
)
