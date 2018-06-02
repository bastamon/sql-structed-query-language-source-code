use db_business       --打开数据库
go
                  -- 创建数据库表
create table hyuser (
 hyid  int identity(1,1) primary key,
 hyname varchar(50) unique,
 hypwd  varchar(50)
)
                   /*向表中插入3条记录*/
insert into hyuser(hyname,hypwd) values('stu1','111111')
insert into hyuser(hyname,hypwd) values('stu2','222222')
insert into hyuser(hyname,hypwd) values('stu3','333333')


declare @hyuser  varchar(50) ,@hypwd varchar(50),@msg varchar(50),@num int,@num1 int
select @hyuser='stu1' , @hypwd='111'
 select @num=count(*) from hyuser where hyname=@hyuser  /*利用SELECT语句查询用户名是否存在*/
 if @num>=1
   begin
                     /*如果用户名存在，再查询密码是否存在*/
     select @num1=count(*) from hyuser where hyname=@hyuser and hypwd=@hypwd 
     if @num1>=1
       set @msg='用户名与密码都正确，成功登录!'
     else
       set @msg='密码不正确，请重新输入！'
   end
 else
    set @msg='用户名不正确，请得新输入！'
  print @msg

declare @hyuser  varchar(50) ,@hypwd varchar(50),@msg varchar(50)
select @hyuser='stu1' , @hypwd='111'
 if exists(select * from hyuser where hyname=@hyuser )
    begin
      if exists(select * from hyuser where hyname=@hyuser and hypwd=@hypwd )
        set @msg='用户名与密码都正确，成功登录!'
      else
       set @msg='密码不正确，请重新输入！'
    end
  else
    set @msg='用户名不正确，请得新输入！'
  print @msg










