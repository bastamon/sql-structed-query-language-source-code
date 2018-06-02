create proc proc_sql15 
 @zghao varchar(50),
 @newzghao varchar(50)
as
begin
 if exists(select * from 职工 where 职工号=@zghao)
   begin
      if exists(select * from 订购单 where 职工号=@zghao)
        begin
           update 订购单 set 职工号=@newzghao where 职工号=@zghao
           print '该职工有订单，并成功修改了订单中的职工号!'
         end
       else
           print '该职工没有订单！'
       update 职工 set 职工号=@newzghao where 职工号=@zghao
       print '更新该职工信息！'
    end
  else
    print '该职工不存在，请重新输入职工号'
end
go
execute proc_sql15 'zg1','zfzg1'

execute proc_sql15 'zg3','zfzg3'

execute proc_sql15 'zg4','zfzg4'