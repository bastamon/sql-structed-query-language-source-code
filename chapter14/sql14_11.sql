use db_business 
go
declare db_cursor12 cursor keyset for
  select ÐÕÃû  from Ö°¹¤ 
open db_cursor12

declare @report Cursor
execute sp_describe_cursor_columns @cursor_return = @report Output,@cursor_source=N'global',@cursor_identity=N'db_cursor12'
fetch next from @report
while (@@FETCH_STATUS <>-1)
  begin
    fetch next from @report
  end
 
 close @report
 deallocate @report
 close db_cursor12
 deallocate db_cursor12
