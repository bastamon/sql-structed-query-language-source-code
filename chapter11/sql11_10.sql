if Exists(select * from dbo.sysobjects
 where  name = 'db_view4' and xtype='v')
  begin
     print '要删除的视图存在'
     drop view db_view4
     print '已成功删除该视图'
  end    
 else
 print '要删除的视图不存在'
