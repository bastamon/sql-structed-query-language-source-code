use db_mysql 
go
create table db_table3
(
  ²Ö¿â±àºÅ int primary key,
  ²Ö¿âºÅ   varchar(50) unique,
  ³ÇÊÐ     varchar(50) not null,
  Ãæ»ý     int
)

use db_mysql 
go
create table db_table4
(
  ²Ö¿â±àºÅ int constraint pk_my1 primary key,
  ²Ö¿âºÅ   varchar(50) constraint uk_my1 unique,
  ³ÇÊÐ     varchar(50) not null,
  Ãæ»ý     int
)