use db_business 
go
declare db_cursor6 cursor scroll for select * from 职工备份   --声明游标
open db_cursor6                                           --打开游标
fetch first from db_cursor6                 --提取游标中的数据信息
update 职工备份 set 仓库号='modifybycursor' where current of db_cursor6  --利用游标修改数据
close db_cursor6
deallocate db_cursor6
