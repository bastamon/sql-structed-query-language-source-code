create proc proc_sql13
 @zghao varchar(30),
 @ckhao varchar(30),
 @sname varchar(50),
 @sex   varchar(10),
 @gz    int
as
 begin
	if exists(select * from 职工 where 职工号=@zghao)
       print '该职工已存在，请重新输入职工号!'
    else
       begin
         if exists(select * from 仓库 where 仓库号=@ckhao)
           begin
            insert into 职工(职工号,仓库号,姓名,性别,工资) values(@zghao,@ckhao,@sname,@sex,@gz)
            print '成功的插入一条记录'
           end  
       else
           print '输入的仓库号不合法，请重新输入仓库号！'
       end
  end
go
execute proc_sql13 'zg1','wh1','张平','女',1350

execute proc_sql13 'zg42','wh11','张平','女',1350


execute proc_sql13 'zg42','wh1','张平','女',1350