use db_business 
go
declare db_cursor4  scroll cursor for select * from  供应商  --声明游标
open db_cursor4                                              --打开游标
fetch first from db_cursor4                 --读取游标中的第一条数据记录
fetch next from db_cursor4                  --读取游标中的下一条数据记录
fetch last from db_cursor4                  --读取游标中的最后一条数据记录
fetch prior from db_cursor4                 --读取游标中的上一条数据记录
fetch absolute 2 from db_cursor4            --读取游标中的第二条数据记录
fetch relative 2 from db_cursor4            --读取游标当前记录下方的第二条数据记录
close db_cursor4                            --关闭游标
deallocate db_cursor4                       --释放游标
