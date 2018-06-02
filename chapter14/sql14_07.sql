use db_business 
go
declare db_cursor9 cursor scroll   for select * from 职工 where 工资>1900
open db_cursor9
fetch first from db_cursor9
while @@fetch_status=0
begin
fetch next from db_cursor9
end
close db_cursor9
deallocate db_cursor9
