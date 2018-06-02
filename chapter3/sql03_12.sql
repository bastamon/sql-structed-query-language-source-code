use db_mysql 
go
if Exists(select * from sys.sysobjects 
   where id=OBJECT_ID('db_table101'))
   print '数据库表名已存在!'
 else
   print '该数据库表名不存在，可以利用该名创建表！'