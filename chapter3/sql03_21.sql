use db_business 
go
create table 职工
 (
	职工ID  int identity(1,1) primary key,
    职工号 varchar(50) unique,
    仓库号  varchar(50) references 仓库(仓库号),
    姓名    varchar(50) not null ,
    性别    varchar(10) check(性别='女' or 性别='男') default '男',
    工资    int
 )

insert into 职工(职工号,仓库号,姓名,性别,工资) values 
   ('zg1','wh1','刘岗','女',1250)
insert into 职工(职工号,仓库号,姓名,性别,工资) values 
   ('zg2','wh1','林安平',null,1310)
insert into 职工(职工号,仓库号,姓名,性别,工资) values 
   ('zg3','wh2','张可','女',2050)
insert into 职工(职工号,仓库号,姓名,性别,工资) values 
   ('zg4','wh1','吴平台','男',1850)
insert into 职工(职工号,仓库号,姓名,性别,工资) values 
   ('zg5','wh3','王峰','女',1962)
insert into 职工(职工号,仓库号,姓名,性别,工资) values 
   ('zg6','wh2','吴艳平','女',1830)
insert into 职工(职工号,仓库号,姓名,性别,工资) values 
   ('zg7','wh4','张亮','男',1850)
insert into 职工(职工号,仓库号,姓名,性别,工资) values 
   ('zg8','wh2','刘或生','男',1750)
insert into 职工(职工号,仓库号,姓名,性别,工资) values 
   ('zg9','wh3','王静','女',1250)
insert into 职工(职工号,仓库号,姓名,性别,工资) values 
   ('zg10','wh4','李明','男',1850)
insert into 职工(职工号,仓库号,姓名,性别,工资) values 
   ('zg11','wh3','鄱平','男',1890)
insert into 职工(职工号,仓库号,姓名,性别,工资) values 
   ('zg12','wh4','李宁','女',1550)
insert into 职工(职工号,仓库号,姓名,性别,工资) values 
   ('zg13','wh2','吴忠诚','男',2150)
insert into 职工(职工号,仓库号,姓名,性别,工资) values 
   ('zg14','wh4','周围','男',1850)
insert into 职工(职工号,仓库号,姓名,性别,工资) values 
   ('zg15','wh1','林林',null,1910)
insert into 职工(职工号,仓库号,姓名,性别,工资) values 
   ('zg16','wh2','陈濡','女',2050)
insert into 职工(职工号,仓库号,姓名,性别,工资) values 
   ('zg17','wh4','吴生亮','男',1850)
insert into 职工(职工号,仓库号,姓名,性别,工资) values 
   ('zg18','wh3','王平峰','女',1962)
