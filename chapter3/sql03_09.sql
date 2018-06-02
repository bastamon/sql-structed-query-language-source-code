use db_mysql 
go
create table db_table9
(
  职工编号 int  primary key,
  职工号   varchar(50) unique,
  仓库号     varchar(50),
  基本工资   int  check(基本工资>=800 and 基本工资<=2100),
  加班工资   int ,
  奖金       int,
  扣率       int,
  应发工资    as (基本工资+加班工资+奖金-扣率)
)
