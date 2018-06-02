use db_business 
go
if Exists(select * from dbo.sysobjects where  name = 'db_trigger2' and xtype='Tr')
  begin
     print '要删除的触发器存在'
     drop trigger db_trigger2
     print '已成功删除该触发器db_trigger2'
  end    
 else
 print '要删除的触发器不存在'
