use db_business 
go
create table 供应商
 (
	供应商ID  int identity(1,1) primary key,
    供应商号 varchar(50) unique,
    供应商名  varchar(50) ,
    城市      varchar(50) ,
    联系方式    varchar(50) ,
    电子邮件    varchar(100) check(电子邮件 like '%@%.%') default 'sailsys@163.com'
 )

insert into 供应商(供应商号,供应商名,城市,联系方式,电子邮件) values 
   ('s1','青岛三元电子厂','青岛','0532-83698754','shangyuan@163.com')
insert into 供应商(供应商号,供应商名,城市,联系方式,电子邮件) values 
   ('s2','济南轻工业集团','济南','0531-83698754','jinan@126.com')
insert into 供应商(供应商号,供应商名,城市,联系方式,电子邮件) values 
   ('s3','济南电子元件有限公司','济南','0531-83698684','jinansddd@126.com')
insert into 供应商(供应商号,供应商名,城市,联系方式,电子邮件) values 
   ('s4','上海天桥厂','上海','83698684','shanghai@sina.com')
insert into 供应商(供应商号,供应商名,城市,联系方式,电子邮件) values 
   ('s5','青岛天桥厂','青岛','83698684','qingdaones@sina.com')
