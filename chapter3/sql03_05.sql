use db_mysql 
go
create table db_table3
(
  �ֿ��� int primary key,
  �ֿ��   varchar(50) unique,
  ����     varchar(50) not null,
  ���     int
)

use db_mysql 
go
create table db_table4
(
  �ֿ��� int constraint pk_my1 primary key,
  �ֿ��   varchar(50) constraint uk_my1 unique,
  ����     varchar(50) not null,
  ���     int
)