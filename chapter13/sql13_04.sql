print abs(-2)
print abs(5)
print sign(10)
print sign(-45)
print sign(0)

use db_business 
go
select 仓库号,城市,面积,(select AVG(面积) from 仓库) as 平均面积,
   面积-(select AVG(面积) from 仓库) as 面积与平均面积之差,
   ABS(面积-(select AVG(面积) from 仓库)) as 面积与平均面积之差的绝对值,
   SIGN (面积-(select AVG(面积) from 仓库)) as 面积与平均面积之差的正负号
   from 仓库