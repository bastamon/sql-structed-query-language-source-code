use db_mysql 
go
alter table db_table2

alter column 电子邮件 varchar(100)

use db_mysql 
go
select  name 字段名, xusertype 类型编号, length 长度 
 from  syscolumns  where id=object_id('db_table2')

