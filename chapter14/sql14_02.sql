use db_business 
go
declare db_cursor4  scroll cursor for select * from  ��Ӧ��  --�����α�
open db_cursor4                                              --���α�
fetch first from db_cursor4                 --��ȡ�α��еĵ�һ�����ݼ�¼
fetch next from db_cursor4                  --��ȡ�α��е���һ�����ݼ�¼
fetch last from db_cursor4                  --��ȡ�α��е����һ�����ݼ�¼
fetch prior from db_cursor4                 --��ȡ�α��е���һ�����ݼ�¼
fetch absolute 2 from db_cursor4            --��ȡ�α��еĵڶ������ݼ�¼
fetch relative 2 from db_cursor4            --��ȡ�α굱ǰ��¼�·��ĵڶ������ݼ�¼
close db_cursor4                            --�ر��α�
deallocate db_cursor4                       --�ͷ��α�
