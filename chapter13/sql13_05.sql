print log(15)
print log10(15)
print sqrt(8)
print exp(3)

use db_business 
go
select 姓名,工资,SQRT(工资) as 工资的平方根,LOG(工资) as 工资的自然对数值
from 职工 