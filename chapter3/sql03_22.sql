use db_business 
go
create table ��Ӧ��
 (
	��Ӧ��ID  int identity(1,1) primary key,
    ��Ӧ�̺� varchar(50) unique,
    ��Ӧ����  varchar(50) ,
    ����      varchar(50) ,
    ��ϵ��ʽ    varchar(50) ,
    �����ʼ�    varchar(100) check(�����ʼ� like '%@%.%') default 'sailsys@163.com'
 )

insert into ��Ӧ��(��Ӧ�̺�,��Ӧ����,����,��ϵ��ʽ,�����ʼ�) values 
   ('s1','�ൺ��Ԫ���ӳ�','�ൺ','0532-83698754','shangyuan@163.com')
insert into ��Ӧ��(��Ӧ�̺�,��Ӧ����,����,��ϵ��ʽ,�����ʼ�) values 
   ('s2','�����Ṥҵ����','����','0531-83698754','jinan@126.com')
insert into ��Ӧ��(��Ӧ�̺�,��Ӧ����,����,��ϵ��ʽ,�����ʼ�) values 
   ('s3','���ϵ���Ԫ�����޹�˾','����','0531-83698684','jinansddd@126.com')
insert into ��Ӧ��(��Ӧ�̺�,��Ӧ����,����,��ϵ��ʽ,�����ʼ�) values 
   ('s4','�Ϻ����ų�','�Ϻ�','83698684','shanghai@sina.com')
insert into ��Ӧ��(��Ӧ�̺�,��Ӧ����,����,��ϵ��ʽ,�����ʼ�) values 
   ('s5','�ൺ���ų�','�ൺ','83698684','qingdaones@sina.com')
