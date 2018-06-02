create proc Proc_sql14 
 @zghao varchar(50)
as
begin
 if exists(select * from 职工 where 职工号=@zghao)
   begin
      if exists(select * from 订购单 where 职工号=@zghao)
        begin
           delete from 订购单 where 职工号=@zghao
           print '该职工有订单，并成功删除!'
         end
       else
           print '该职工没有订单！'
       delete from 职工 where 职工号=@zghao
       print '删除该职工信息！'
    end
  else
    print '该职工不存在，请重新输入职工号'
end
go
execute proc_sql14 'zg52'

execute proc_sql14 'zg42'

execute proc_sql14 'zg1'