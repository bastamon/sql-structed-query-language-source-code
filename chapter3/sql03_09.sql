use db_mysql 
go
create table db_table9
(
  ְ����� int  primary key,
  ְ����   varchar(50) unique,
  �ֿ��     varchar(50),
  ��������   int  check(��������>=800 and ��������<=2100),
  �Ӱ๤��   int ,
  ����       int,
  ����       int,
  Ӧ������    as (��������+�Ӱ๤��+����-����)
)
