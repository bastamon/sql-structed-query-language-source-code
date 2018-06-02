use db_business 
go
declare db_cursor13 cursor keyset for
  select ÐÕÃû  from Ö°¹¤ 
open db_cursor13

declare @report Cursor
execute sp_describe_cursor_tables @cursor_return = @report Output,@cursor_source=N'global',@cursor_identity=N'db_cursor13'
fetch next from @report
while (@@FETCH_STATUS <>-1)
  begin
    fetch next from @report
  end

close @report
 deallocate @report
 close db_cursor13
 deallocate db_cursor13




