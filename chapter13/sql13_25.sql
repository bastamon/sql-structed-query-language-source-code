use db_business 
go
if Exists(select * from dbo.sysobjects where  name = 'db_fun3' and xtype='if')
  begin
     print 'Ҫɾ�����Զ��庯������'
     drop function db_fun3
     print '�ѳɹ�ɾ�����Զ��庯��db_fun3'
  end    
 else
 print 'Ҫɾ�����Զ��庯��������'
