use db_mysql 
go
alter table db_table2
drop column �����ʼ�
go

use db_mysql 
go
alter table db_table2
drop column ��ϵ��ʽ

use db_mysql 
go
alter table db_table2
drop constraint DF__db_table2__��ϵ��ʽ__45F365D3
go
alter table db_table2
drop column ��ϵ��ʽ





use db_mysql 
go
select  name �ֶ���, xusertype ���ͱ��, length ���� 
 from  syscolumns  where id=object_id('db_table2')
