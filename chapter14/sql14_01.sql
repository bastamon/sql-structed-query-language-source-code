use db_business 
go
declare db_cursor1  cursor  for 
   select * from ְ�� where ���� between 1500 and 2000

use db_business 
go
declare db_cursor2  cursor  for 
   select * from ְ�� where ����>1200
   for read only
   
   
use db_business 
go
declare db_cursor3  cursor  for 
   select * from ְ�� where �ֿ��!='wh1'
   for update

