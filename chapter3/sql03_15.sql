use db_mysql 
go
alter table db_table2
add �����ʼ� varchar(50)

use db_mysql 
go
alter table db_table2
add ��ϵ��ʽ varchar(50) default '0532-88886396'




select  name �ֶ���, xusertype ���ͱ��, length ���� 
 from  syscolumns  where id=object_id('db_table2')