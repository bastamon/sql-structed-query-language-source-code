use db_business       --�����ݿ�
go
                  -- �������ݿ��
create table hyuser (
 hyid  int identity(1,1) primary key,
 hyname varchar(50) unique,
 hypwd  varchar(50)
)
                   /*����в���3����¼*/
insert into hyuser(hyname,hypwd) values('stu1','111111')
insert into hyuser(hyname,hypwd) values('stu2','222222')
insert into hyuser(hyname,hypwd) values('stu3','333333')


declare @hyuser  varchar(50) ,@hypwd varchar(50),@msg varchar(50),@num int,@num1 int
select @hyuser='stu1' , @hypwd='111'
 select @num=count(*) from hyuser where hyname=@hyuser  /*����SELECT����ѯ�û����Ƿ����*/
 if @num>=1
   begin
                     /*����û������ڣ��ٲ�ѯ�����Ƿ����*/
     select @num1=count(*) from hyuser where hyname=@hyuser and hypwd=@hypwd 
     if @num1>=1
       set @msg='�û��������붼��ȷ���ɹ���¼!'
     else
       set @msg='���벻��ȷ�����������룡'
   end
 else
    set @msg='�û�������ȷ����������룡'
  print @msg

declare @hyuser  varchar(50) ,@hypwd varchar(50),@msg varchar(50)
select @hyuser='stu1' , @hypwd='111'
 if exists(select * from hyuser where hyname=@hyuser )
    begin
      if exists(select * from hyuser where hyname=@hyuser and hypwd=@hypwd )
        set @msg='�û��������붼��ȷ���ɹ���¼!'
      else
       set @msg='���벻��ȷ�����������룡'
    end
  else
    set @msg='�û�������ȷ����������룡'
  print @msg










