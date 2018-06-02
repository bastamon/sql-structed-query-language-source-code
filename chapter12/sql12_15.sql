use db_business 
go
if Exists(select * from dbo.sysobjects where  name = 'proc_sql5' and xtype='p')
  begin
     print '要删除的存储过程存在'
     drop proc proc_sql5
     print '已成功删除该存储过程proc_sql5'
  end    
 else
 print '要删除的存储过程不存在'
