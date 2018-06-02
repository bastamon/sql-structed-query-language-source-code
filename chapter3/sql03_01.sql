create database db_mysql
go
use db_mysql     --打开数据库
create table db_table1  --创建数据库表
(
       --数据库表中各字段及字段类型
  仓库编号 int,
  仓库号  varchar(50),
  城市    varchar(50),
  面积    int
)

