use db_business
go
declare db_cursor5 scroll cursor for select ְ����,����,���� from ְ��   --�����α�
declare @t varchar(10)                                                   --�������
declare @t1 varchar(10)
declare @t2 int
open db_cursor5                                                          --���α�
fetch absolute 4 from db_cursor5 into @t,@t1,@t2     --��ȡ�α��е����ݱ��浽������
select @t as ְ����,@t1 as ְ����,@t2 as ����        --��������е�ֵ
close db_cursor5                                     --�ر��α�
deallocate db_cursor5                                --�ͷ��α�
