use db_business 
go
if Exists(select * from dbo.sysobjects where  name = 'proc_sql5' and xtype='p')
  begin
     print 'Ҫɾ���Ĵ洢���̴���'
     drop proc proc_sql5
     print '�ѳɹ�ɾ���ô洢����proc_sql5'
  end    
 else
 print 'Ҫɾ���Ĵ洢���̲�����'
