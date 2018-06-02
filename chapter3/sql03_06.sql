use db_mysql 
go
create table db_table5
(
  职工编号 int  primary key,
  职工号   varchar(50) unique,
  仓库号     varchar(50),
  工资   int  
)
go
create table db_table6
(
  订单编号 int  primary key,
  订单号   varchar(50) unique,
  职工号   varchar(50) references db_table5(职工号),
  订购日期 datetime,
  销售金额  int
)
