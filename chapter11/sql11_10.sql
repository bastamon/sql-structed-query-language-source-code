if Exists(select * from dbo.sysobjects
 where  name = 'db_view4' and xtype='v')
  begin
     print 'Ҫɾ������ͼ����'
     drop view db_view4
     print '�ѳɹ�ɾ������ͼ'
  end    
 else
 print 'Ҫɾ������ͼ������'
