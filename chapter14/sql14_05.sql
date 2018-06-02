use db_business 
go
declare db_cursor7 cursor scroll for select * from 职工备份   --声明游标
open db_cursor7                                               --打开游标
fetch absolute 3 from db_cursor7                      --读取游标中的数据
delete from 职工备份 where current of db_cursor7      --利用游标删除数据
close db_cursor7
deallocate db_cursor7

use db_business 
go
select * from 职工备份