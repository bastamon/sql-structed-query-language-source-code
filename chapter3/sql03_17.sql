use db_mysql 
go
alter table db_table2
drop column 电子邮件
go

use db_mysql 
go
alter table db_table2
drop column 联系方式

use db_mysql 
go
alter table db_table2
drop constraint DF__db_table2__联系方式__45F365D3
go
alter table db_table2
drop column 联系方式





use db_mysql 
go
select  name 字段名, xusertype 类型编号, length 长度 
 from  syscolumns  where id=object_id('db_table2')
