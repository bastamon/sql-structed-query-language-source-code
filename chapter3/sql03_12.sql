use db_mysql 
go
if Exists(select * from sys.sysobjects 
   where id=OBJECT_ID('db_table101'))
   print '���ݿ�����Ѵ���!'
 else
   print '�����ݿ���������ڣ��������ø���������'