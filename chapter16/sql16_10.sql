print @@TRANCOUNT 
if @@TRANCOUNT <>0 rollback tran
begin tran
  select * from mytt   --mytt��������
  if @@ERROR <>0
    begin
      print 'û��ִ�е����'
      if @@TRANCOUNT <>0  rollback tran
    end
commit tran
print @@TRANCOUNT 
dbcc opentran

