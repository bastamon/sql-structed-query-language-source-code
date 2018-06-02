use  db_business
go
create table 仓库
 (
	仓库ID  int identity(1,1) primary key,
    仓库号 varchar(50) unique,
    城市   varchar(50) default '青岛',
    面积   int  default 800 check(面积>=500  and 面积<=1800),
    创建时间 datetime
 )


insert into 仓库(仓库号,城市,面积,创建时间) values ('wh1','北京',900,'2003-04-02')
insert into 仓库(仓库号,城市,面积,创建时间) values ('wh2',null,600,'2003-04-09')
insert into 仓库(仓库号,城市,面积,创建时间) values ('wh3','上海',1203,'2003-05-02')
insert into 仓库(仓库号,城市,面积,创建时间) values ('wh4','北京',1000,'2004-04-05')
insert into 仓库(仓库号,城市,面积,创建时间) values ('wh5','济南',900,'2004-06-08')



