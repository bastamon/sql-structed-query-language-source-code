declare @str1 char(10),@str2 varchar(50), @x1 int, @x2 real,@time1 datetime
set @str1='good'
set @str2='hello,how are you?'
set @x1=12
set @x2=15
set @time1='2009/05/06'
print @str1
print @str2
print @x1
print @x2
print @time1


declare @str1 char(10),@str2 varchar(50), @x1 int, @x2 real,@time1 datetime
select @str1='good',@str2='hello,how are you?',@x1=12,@x2=15,@time1='2009/05/06'
select @str1 as 字符变量1,@str2 as 字符变量2,
       @x1 as 整型变量1,@x2 as 整型变量2,@time1 as 日期时间变量









