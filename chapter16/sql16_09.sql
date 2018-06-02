




select @@TRANCOUNT  

begin tran
  select * from mytt   --mytt表并不存在
  if @@ERROR <>0
    begin
      print '没有执行到这里！'
      if @@TRANCOUNT <>0  rollback tran
    end
commit tran

print @@TRANCOUNT 
dbcc opentran