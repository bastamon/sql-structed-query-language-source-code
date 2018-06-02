use db_business
go
declare db_cursor5 scroll cursor for select 职工号,姓名,工资 from 职工   --声明游标
declare @t varchar(10)                                                   --定义变量
declare @t1 varchar(10)
declare @t2 int
open db_cursor5                                                          --打开游标
fetch absolute 4 from db_cursor5 into @t,@t1,@t2     --提取游标中的数据保存到变量中
select @t as 职工号,@t1 as 职工名,@t2 as 工资        --输出变量中的值
close db_cursor5                                     --关闭游标
deallocate db_cursor5                                --释放游标
