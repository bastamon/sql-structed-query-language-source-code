use db_business 
go 
declare db_cursor10 cursor scroll 
for 
select * from �ֿ�  where ����!='�ൺ'
open db_cursor10

declare @mycur cursor
execute sp_cursor_list @cursor_return =@mycur output,@cursor_scope =2
fetch next from @mycur
while @@fetch_status <>-1
begin
  fetch next from @mycur
end

close @mycur
deallocate @mycur
close db_cursor10
deallocate db_cursor10

