use db_business 
go
declare db_cursor8 cursor scroll for  select * from ְ�� where ְ����='zg2'
open db_cursor8
if @@fetch_status=0            --if�������
  print '���ڸü�¼'
else
  print '�����ڸü�¼'
close db_cursor8
deallocate db_cursor8
