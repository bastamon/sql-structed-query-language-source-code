create proc Proc_sql14 
 @zghao varchar(50)
as
begin
 if exists(select * from ְ�� where ְ����=@zghao)
   begin
      if exists(select * from ������ where ְ����=@zghao)
        begin
           delete from ������ where ְ����=@zghao
           print '��ְ���ж��������ɹ�ɾ��!'
         end
       else
           print '��ְ��û�ж�����'
       delete from ְ�� where ְ����=@zghao
       print 'ɾ����ְ����Ϣ��'
    end
  else
    print '��ְ�������ڣ�����������ְ����'
end
go
execute proc_sql14 'zg52'

execute proc_sql14 'zg42'

execute proc_sql14 'zg1'