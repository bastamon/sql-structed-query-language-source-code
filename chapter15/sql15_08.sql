use db_business 
go
if Exists(select * from dbo.sysobjects where  name = 'db_trigger2' and xtype='Tr')
  begin
     print 'Ҫɾ���Ĵ���������'
     drop trigger db_trigger2
     print '�ѳɹ�ɾ���ô�����db_trigger2'
  end    
 else
 print 'Ҫɾ���Ĵ�����������'
