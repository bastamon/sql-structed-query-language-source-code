use db_mysql 
go
create table db_table11
(
  �ֿ��� int identity(1,1) primary key,
  �ֿ��   varchar(50) collate french_CI_AI not null,
  ����     varchar(50) default '�ൺ',
  ���     int  check(���>=300 and ���<=1800)
)
