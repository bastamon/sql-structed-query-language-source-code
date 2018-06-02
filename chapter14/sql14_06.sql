use db_business 
go
declare db_cursor8 cursor scroll for  select * from 职工 where 职工号='zg2'
open db_cursor8
if @@fetch_status=0            --if条件语句
  print '存在该记录'
else
  print '不存在该记录'
close db_cursor8
deallocate db_cursor8
