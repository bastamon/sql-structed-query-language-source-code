create proc proc_sql13
 @zghao varchar(30),
 @ckhao varchar(30),
 @sname varchar(50),
 @sex   varchar(10),
 @gz    int
as
 begin
	if exists(select * from ְ�� where ְ����=@zghao)
       print '��ְ���Ѵ��ڣ�����������ְ����!'
    else
       begin
         if exists(select * from �ֿ� where �ֿ��=@ckhao)
           begin
            insert into ְ��(ְ����,�ֿ��,����,�Ա�,����) values(@zghao,@ckhao,@sname,@sex,@gz)
            print '�ɹ��Ĳ���һ����¼'
           end  
       else
           print '����Ĳֿ�Ų��Ϸ�������������ֿ�ţ�'
       end
  end
go
execute proc_sql13 'zg1','wh1','��ƽ','Ů',1350

execute proc_sql13 'zg42','wh11','��ƽ','Ů',1350


execute proc_sql13 'zg42','wh1','��ƽ','Ů',1350