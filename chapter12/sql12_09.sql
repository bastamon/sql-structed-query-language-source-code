create proc proc_sql15 
 @zghao varchar(50),
 @newzghao varchar(50)
as
begin
 if exists(select * from ְ�� where ְ����=@zghao)
   begin
      if exists(select * from ������ where ְ����=@zghao)
        begin
           update ������ set ְ����=@newzghao where ְ����=@zghao
           print '��ְ���ж��������ɹ��޸��˶����е�ְ����!'
         end
       else
           print '��ְ��û�ж�����'
       update ְ�� set ְ����=@newzghao where ְ����=@zghao
       print '���¸�ְ����Ϣ��'
    end
  else
    print '��ְ�������ڣ�����������ְ����'
end
go
execute proc_sql15 'zg1','zfzg1'

execute proc_sql15 'zg3','zfzg3'

execute proc_sql15 'zg4','zfzg4'