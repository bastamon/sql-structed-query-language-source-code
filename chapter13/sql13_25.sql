use db_business 
go
if Exists(select * from dbo.sysobjects where  name = 'db_fun3' and xtype='if')
  begin
     print '要删除的自定义函数存在'
     drop function db_fun3
     print '已成功删除该自定义函数db_fun3'
  end    
 else
 print '要删除的自定义函数不存在'
