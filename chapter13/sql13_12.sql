
print left('hello,how are you?',5)
print right('hello,how are you?',12)
print substring('hello,how are you?',7,11)

use db_business 
go
select 姓名,LEFT(姓名,1) as 姓, SUBSTRING(姓名,2,2) as 名字 from 职工