use db_business 
go
declare db_cursor11 cursor scroll 
for 
select * from �ֿ�  where ����!='�ൺ'
open db_cursor11

declare @mycur1 cursor
execute sp_describe_cursor @cursor_return =@mycur1 output,@cursor_source =N'global',@cursor_identity=N'db_cursor11'
fetch next from @mycur1
while @@fetch_status <>-1
begin
  fetch next from @mycur1
end

close @mycur1
deallocate @mycur1
close db_cursor11
deallocate db_cursor11

