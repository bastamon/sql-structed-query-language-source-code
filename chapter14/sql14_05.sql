use db_business 
go
declare db_cursor7 cursor scroll for select * from ְ������   --�����α�
open db_cursor7                                               --���α�
fetch absolute 3 from db_cursor7                      --��ȡ�α��е�����
delete from ְ������ where current of db_cursor7      --�����α�ɾ������
close db_cursor7
deallocate db_cursor7

use db_business 
go
select * from ְ������