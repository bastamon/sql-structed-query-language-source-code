declare @x char
declare @y varchar(10)
set @x = 'b'
set @y='hello,HOW ARE YOU!'
print 'b的ASCII是：'+cast(ascii(@x)as varchar(10))
print '变量@y的值：'+@y
print '把变量@y转换为小写字母：'+lower(@y)
print '把变量@y转换为大写字母：'+upper(@y)
print 'str()函数的应用'
print str(124.654,6,1)
print str(124.654,3,1)

use db_business
go
select 仓库号, UPPER (仓库号) as 仓库号转换为大写,职工号,
   UPPER (职工号) as 职工号转换为大写, 工资 
from 职工








