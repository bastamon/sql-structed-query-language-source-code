use db_business 
go
declare db_cursor6 cursor scroll for select * from ְ������   --�����α�
open db_cursor6                                           --���α�
fetch first from db_cursor6                 --��ȡ�α��е�������Ϣ
update ְ������ set �ֿ��='modifybycursor' where current of db_cursor6  --�����α��޸�����
close db_cursor6
deallocate db_cursor6
