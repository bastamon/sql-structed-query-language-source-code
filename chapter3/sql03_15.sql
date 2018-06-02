use db_mysql 
go
alter table db_table2
add 电子邮件 varchar(50)

use db_mysql 
go
alter table db_table2
add 联系方式 varchar(50) default '0532-88886396'




select  name 字段名, xusertype 类型编号, length 长度 
 from  syscolumns  where id=object_id('db_table2')