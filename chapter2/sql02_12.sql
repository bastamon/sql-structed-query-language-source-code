
if Exists(SELECT * FROM 
sys.databases WHERE name = 'db_sqlserver4')
 drop database db_sqlserver4
 else
 print '要删除的数据库不存在'