use  db_business
go
create table �ֿ�
 (
	�ֿ�ID  int identity(1,1) primary key,
    �ֿ�� varchar(50) unique,
    ����   varchar(50) default '�ൺ',
    ���   int  default 800 check(���>=500  and ���<=1800),
    ����ʱ�� datetime
 )


insert into �ֿ�(�ֿ��,����,���,����ʱ��) values ('wh1','����',900,'2003-04-02')
insert into �ֿ�(�ֿ��,����,���,����ʱ��) values ('wh2',null,600,'2003-04-09')
insert into �ֿ�(�ֿ��,����,���,����ʱ��) values ('wh3','�Ϻ�',1203,'2003-05-02')
insert into �ֿ�(�ֿ��,����,���,����ʱ��) values ('wh4','����',1000,'2004-04-05')
insert into �ֿ�(�ֿ��,����,���,����ʱ��) values ('wh5','����',900,'2004-06-08')



